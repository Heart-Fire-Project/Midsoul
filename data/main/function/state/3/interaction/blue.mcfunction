tag @a[distance=..0.5,tag=blue_interact,scores={countdown=700..}] add interact_fin

# 完成碎片收集
scoreboard players add @a[tag=interact_fin] temp.collect 1
scoreboard players add $shard_collect data 1
execute if score $3_process countdown matches 18001.. run scoreboard players add $3_process countdown 100
particle glow ~ ~0.2 ~ 0.2 0.1 0.2 5 15 force @a
playsound block.respawn_anchor.charge player @a

# 判定：收集到灵魂碎片时
execute as @a[tag=interact_fin,scores={talent_1=1}] at @s run function main:state/3/ability/talent/001a
execute as @a[tag=interact_fin,scores={talent_2=1}] at @s run function main:state/3/ability/talent/001a
execute as @a[tag=interact_fin,scores={talent_1=4}] at @s run function main:state/3/ability/talent/004
execute as @a[tag=interact_fin,scores={talent_2=4}] at @s run function main:state/3/ability/talent/004
execute if entity @a[team=soul,scores={state=1}] as @a[tag=interact_fin,scores={talent_1=6}] at @s run function main:state/3/ability/talent/006
execute if entity @a[team=soul,scores={state=1}] as @a[tag=interact_fin,scores={talent_2=6}] at @s run function main:state/3/ability/talent/006
execute if entity @s[tag=T107] run function main:state/3/ability/talent/107f
execute if score $echo data matches 3 run function main:state/3/event/summon/blue {num:"1"}

# 地图变量
# 聚光圣殿 - 2*4*6
execute if score $shard_collect data matches 04 run fill 1184 13 1127 1182 13 1129 pearlescent_froglight replace bone_block
execute if score $shard_collect data matches 04 run fill 1196 13 1133 1198 13 1131 pearlescent_froglight replace bone_block
execute if score $shard_collect data matches 08 run fill 1182 13 1130 1184 13 1132 pearlescent_froglight replace bone_block
execute if score $shard_collect data matches 08 run fill 1196 13 1130 1198 13 1128 pearlescent_froglight replace bone_block
execute if score $shard_collect data matches 12 run fill 1183 13 1133 1185 13 1135 pearlescent_froglight replace bone_block
execute if score $shard_collect data matches 12 run fill 1197 13 1127 1195 13 1125 pearlescent_froglight replace bone_block
execute if score $shard_collect data matches 16 run fill 1186 13 1137 1188 13 1135 pearlescent_froglight replace bone_block
execute if score $shard_collect data matches 16 run fill 1194 13 1125 1192 13 1123 pearlescent_froglight replace bone_block
execute if score $shard_collect data matches 20 run fill 1189 15 1135 1191 15 1137 pearlescent_froglight replace bone_block
execute if score $shard_collect data matches 20 run fill 1191 15 1123 1189 15 1125 pearlescent_froglight replace bone_block
execute if score $shard_collect data matches 24 run fill 1192 13 1136 1193 13 1137 pearlescent_froglight replace bone_block
execute if score $shard_collect data matches 24 run fill 1188 13 1124 1187 13 1123 pearlescent_froglight replace bone_block
# 镇灵塔楼 - 3*6
execute if score $shard_collect data matches 03 run setblock 1051 41 -999 red_candle[lit=true]
execute if score $shard_collect data matches 06 run setblock 1051 41 -995 red_candle[lit=true]
execute if score $shard_collect data matches 09 run setblock 1049 41 -998 red_candle[lit=true]
execute if score $shard_collect data matches 12 run setblock 1053 41 -996 red_candle[lit=true]
execute if score $shard_collect data matches 15 run setblock 1053 41 -998 red_candle[lit=true]
execute if score $shard_collect data matches 18 run setblock 1049 41 -996 red_candle[lit=true]
# 山间湖谷 - 5*8
execute if score $shard_collect data matches 05 run setblock -868 20 1100 crying_obsidian
execute if score $shard_collect data matches 10 run setblock -870 20 1099 crying_obsidian
execute if score $shard_collect data matches 15 run setblock -869 20 1098 crying_obsidian
execute if score $shard_collect data matches 20 run setblock -868 20 1098 crying_obsidian
execute if score $shard_collect data matches 25 run setblock -869 20 1100 crying_obsidian
execute if score $shard_collect data matches 30 run setblock -868 20 1099 crying_obsidian
execute if score $shard_collect data matches 35 run setblock -870 20 1098 crying_obsidian
execute if score $shard_collect data matches 40 run setblock -870 20 1100 crying_obsidian

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
execute if score $aura_rank data matches -3..-1 run advancement grant @a[tag=game_player] only main:tutorial/mechanism/3

# 解析灵气等级变化
execute if score $aura_rank data matches -3..-1 run playsound block.sculk_shrieker.shriek player @a[team=!admin] 0 1000000 0 1000000
execute if score $aura_rank data matches -1 run tellraw @a[team=!admin] [{"text":"» ","color":"#80FFFF","bold":true},{"translate":"ms.info.rank.1","fallback":"灵气初起 ◆◇◇ 灵魂收集碎片时将与附近的碎片共鸣","bold":false},"\n"]
execute if score $aura_rank data matches -2 run tellraw @a[team=!admin] [{"text":"» ","color":"#80D5FF","bold":true},{"translate":"ms.info.rank.2","fallback":"灵气弥散 ◆◆◇ 灵魂将与附近的碎片持续共鸣","bold":false},"\n"]
execute if score $aura_rank data matches -3 run tellraw @a[team=!admin] [{"text":"» ","color":"#80AAFF","bold":true},{"translate":"ms.info.rank.3","fallback":"灵气充盈 ◆◆◆ 场上所有剩余碎片持续进行共鸣","bold":false},"\n"]
execute if score $aura_rank data matches -3 as @e[tag=blue] run data modify entity @s Glowing set value 1b
execute if score $aura_rank data matches -3..-1 run scoreboard players add $talent_007 data 5
execute if score $aura_rank data matches -3..-1 run scoreboard players operation $aura_rank data *= #-1 data
execute if score $aura_rank data matches 1 at @a[tag=interact_fin] as @e[tag=blue,distance=..12] run function main:state/3/event/aura/1

tag @a remove interact_fin
kill @s