# 需要先对原回响做回调的场合
weather clear 77419
tag @a remove echo_target
tag @e[tag=fake_blue] add blue
tag @e remove fake_blue
tag @e remove E04
execute if score $echo data matches 9 run function debug:sub/game/shard/summon

# 正式修改
$scoreboard players set $echo data $(value)
execute if data storage ms:mode {logic:"1"} as @a[tag=game_player] run function main:state/3/player/effect
playsound entity.mooshroom.convert player @a 0 1000000 0 120000
tellraw @a [{text:"» ",bold:true,color:"light_purple"},{translate:"ms.info.switch_echo",fallback:"回响已更迭！",bold:false}]
execute as @a run function main:lib/echo/info

# 现行获取当前数据
execute store result score $prev_goal data run data get storage ms:map shard_goal

# 重置计时器
execute if score $echo data matches 1 run function main:lib/echo/init {min:"0",max:"0"}
execute if score $echo data matches 4 run function main:lib/echo/init {min:"20",max:"60"}
execute if score $echo data matches 7 run function main:lib/echo/init {min:"30",max:"120"}
execute if score $echo data matches 10 run function main:lib/echo/init {min:"0",max:"0"}

# 重置地图数据
function main:lib/map/data
function main:lib/map/sync
function main:lib/map/echo

# 重新计算收集进度
execute store result score $new_goal temp run data get storage ms:map shard_goal
scoreboard players operation $new_goal temp *= #10000 data
scoreboard players operation $new_goal temp /= $prev_goal data
scoreboard players operation $shard_collect data *= $new_goal temp
scoreboard players operation $shard_collect data /= #10000 data
execute store result score $goal temp run data get storage ms:map shard_goal
function debug:sub/game/renew_bossbar with storage ms:map

# 需要对新回响进行额外设置的场合
execute if score $echo data matches 2 store result storage ms:temp num int 1 run data get storage ms:map shard_summon 0.3
execute if score $echo data matches 2 run function main:lib/echo/02 with storage ms:temp
execute if score $echo data matches 4 run weather thunder 88614
scoreboard players set $minus_shard temp 0
execute if score $echo data matches 9 run function debug:sub/game/shard/destroy

execute if score @s detect.interact matches -2999..-2000 run function debug:panel/2