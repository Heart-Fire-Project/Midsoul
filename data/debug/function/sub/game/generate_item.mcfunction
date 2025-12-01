# 设置地图信息
function main:lib/map/data
function main:lib/map/sync

# 碎片重新生成 Ⅰ | 按比例计算已收集数量，
execute store result score $new_goal temp run data get storage ms:map shard_goal
scoreboard players operation $new_goal temp *= #10000 data
scoreboard players operation $new_goal temp /= $prev_goal data
scoreboard players operation $shard_collect data *= $new_goal temp
scoreboard players operation $shard_collect data /= #10000 data
execute store result score $goal temp run data get storage ms:map shard_goal

# 碎片重新生成 Ⅱ | 按照剩余收集数 + 地图原有额外数作为通常生成量，受回响影响
execute store result score $remain temp run data get storage ms:map shard_goal
scoreboard players operation $remain temp -= $shard_collect data
execute store result score $extra temp run data get storage ms:map original_summon
execute store result score $goal temp run data get storage ms:map original_goal
scoreboard players operation $extra temp -= $goal temp
scoreboard players operation $remain temp += $extra temp
execute if score $echo data matches 9 run scoreboard players set $remain temp 3
execute store result storage ms:temp num int 1 run scoreboard players get $remain temp
function main:state/3/event/summon/blue with storage ms:temp

# 碎片重新生成 Ⅲ | 计算剩下的回响并处理
function main:lib/map/echo
execute if score $echo data matches 2 store result storage ms:temp num int 1 run data get storage ms:map shard_summon 0.3
execute if score $echo data matches 2 run function main:state/3/echo/02 with storage ms:temp
function debug:sub/game/renew_bossbar with storage ms:map

# 灵魂之灯重新生成 | 每个垂死的灵魂都该来一个
execute as @a[team=soul,scores={state=1}] at @s run function main:state/3/event/summon/gold

# 灵魂宝物盒重新生成 | 直接按照原数量生成即可
function main:state/3/event/summon/gray with storage ms:map

# 传送门重新生成 | 实际视作游戏回到收集阶段
execute if score $state data matches 4 store result score $goal temp run data get storage ms:map shard_goal
execute if score $state data matches 4 run scoreboard players operation $shard_collect data = $goal temp
execute if score $state data matches 4 run scoreboard players set $state data 3