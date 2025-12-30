tag @r[distance=..0.7,tag=interact_blue,scores={tick.general=700..}] add interact_fin

# 完成碎片收集
scoreboard players add $shard_collect data 1
execute if score $3_process tick.general matches 18001.. run scoreboard players add $3_process tick.general 100
execute if score $state data matches 4 run scoreboard players add $4_portal tick.general 200
particle glow ~ ~0.2 ~ 0.2 0.1 0.2 5 15 force @a
playsound block.respawn_anchor.charge player @a ~ ~ ~ 0.5 1

# 实时表现分
scoreboard players add @a[tag=interact_fin] temp.collect 1
execute if score $state data matches 3 run scoreboard players add @a[tag=interact_fin] temp.rated_collect 1
execute if score $state data matches 3 as @a[tag=interact_fin,scores={setting.instant_rating=1}] run function main:lib/rating/1/collect

# 判定：收集到灵魂碎片时
function main:lib/action/interact/blue

# 地图内变量
scoreboard players operation $value temp = $shard_collect data
scoreboard players operation $value temp *= #100 data
$scoreboard players set $goal temp $(shard_goal)
scoreboard players operation $value temp /= $goal temp
function main:lib/map/variety/apply

# 灵气等级 | 为玩家提供碎片提示
# 1 - 收集展示邻近碎片 - 50%
# 2 - 持续展示邻近碎片 - 70%
# 3 - 高亮全部剩余碎片 - 90%
$scoreboard players set $goal temp $(shard_goal)
scoreboard players operation $rank_1 temp = $goal temp
scoreboard players operation $rank_1 temp *= #5 data
scoreboard players operation $rank_1 temp /= #10 data
scoreboard players operation $rank_2 temp = $goal temp
scoreboard players operation $rank_2 temp *= #7 data
scoreboard players operation $rank_2 temp /= #10 data
scoreboard players operation $rank_3 temp = $goal temp
scoreboard players operation $rank_3 temp *= #9 data
scoreboard players operation $rank_3 temp /= #10 data
execute if score $aura_rank data matches ..0 if score $shard_collect data = $rank_1 temp run scoreboard players set $aura_rank data -1
execute if score $aura_rank data matches ..1 if score $shard_collect data = $rank_2 temp run scoreboard players set $aura_rank data -2
execute if score $aura_rank data matches ..2 if score $shard_collect data = $rank_3 temp run scoreboard players set $aura_rank data -3

# 教程
execute if score $aura_rank data matches -3..-1 run advancement grant @a[tag=game_player] only main:tutorial/mechanic/3

# 解析灵气等级变化
execute if score $aura_rank data matches -3..-1 run playsound block.sculk_shrieker.shriek player @a 0 1000000 0 120000
execute if score $aura_rank data matches -1 run tellraw @a [{text:"» ",color:"#80FFFF",bold:true},{translate:"ms.info.rank.1",fallback:"灵气初起 ◆◇◇ 灵魂收集碎片时将与附近的碎片共鸣",bold:false}]
execute if score $aura_rank data matches -2 run tellraw @a [{text:"» ",color:"#80D5FF",bold:true},{translate:"ms.info.rank.2",fallback:"灵气弥散 ◆◆◇ 灵魂将与附近的碎片持续共鸣",bold:false}]
execute if score $aura_rank data matches -3 run tellraw @a [{text:"» ",color:"#80AAFF",bold:true},{translate:"ms.info.rank.3",fallback:"灵气充盈 ◆◆◆ 场上所有剩余碎片持续进行共鸣",bold:false}]
execute if score $aura_rank data matches -3 as @e[tag=blue] run data merge entity @s {Glowing:1b}
execute if score $aura_rank data matches -3..-1 run scoreboard players operation $aura_rank data *= #-1 data
execute if score $aura_rank data matches 1 at @a[tag=interact_fin] as @e[tag=blue,distance=..12] run function main:lib/event/aura/1

tag @a remove interact_fin
kill @s