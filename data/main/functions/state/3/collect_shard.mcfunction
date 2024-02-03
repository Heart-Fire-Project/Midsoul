# 完成碎片收集
scoreboard players add @a[distance=..1,tag=collecting,scores={countdown=601..}] stat_temp_collect 1
scoreboard players add $shard_collect temp 1
particle glow ~ ~0.2 ~ 0.2 0.1 0.2 5 15 force @a
playsound block.respawn_anchor.charge ambient @a ~ ~ ~
kill @s

# 能力
execute as @a[distance=..1,tag=collecting,scores={countdown=601..,talent_1=1}] at @s run function main:state/3/talent/001_a
execute as @a[distance=..1,tag=collecting,scores={countdown=601..,talent_1=4}] at @s run function main:state/3/talent/004
execute as @a[distance=..1,tag=collecting,scores={countdown=601..,talent_1=6}] at @s run function main:state/3/talent/006
execute as @a[distance=..1,tag=collecting,scores={countdown=601..,talent_2=1}] at @s run function main:state/3/talent/001_a
execute as @a[distance=..1,tag=collecting,scores={countdown=601..,talent_2=4}] at @s run function main:state/3/talent/004
execute as @a[distance=..1,tag=collecting,scores={countdown=601..,talent_2=6}] at @s run function main:state/3/talent/006
execute as @a[team=protect,tag=skill_on,scores={skill=2}] at @s run function main:state/3/skill/102a
scoreboard players add @a[distance=..1,tag=collecting,scores={countdown=601..,talent_1=7}] stat_temp_talent 1
scoreboard players add @a[distance=..1,tag=collecting,scores={countdown=601..,talent_2=7}] stat_temp_talent 1
execute at @s[tag=T107] run summon minecraft:firework_rocket ~ ~2 ~ {LifeTime:24,FireworksItem:{id:"firework_rocket",Count:2,tag:{Fireworks:{Explosions:[{Flicker:1b,Trail:1b,Type:1,Colors:[I;6688755],FadeColors:[I;6648575]}]}}}}
execute if entity @s[tag=T107] run scoreboard players remove @r[team=protect,scores={talent_107=1..}] talent_107 1

# 地图变量
# 聚光圣殿 - 2*1*24
execute if score $shard_collect temp matches 01 run setblock 1184 1 127 pearlescent_froglight
execute if score $shard_collect temp matches 02 run setblock 1184 1 128 pearlescent_froglight
execute if score $shard_collect temp matches 03 run setblock 1183 1 128 pearlescent_froglight
execute if score $shard_collect temp matches 04 run setblock 1183 1 129 pearlescent_froglight
execute if score $shard_collect temp matches 05 run setblock 1183 1 130 pearlescent_froglight
execute if score $shard_collect temp matches 06 run setblock 1183 1 131 pearlescent_froglight
execute if score $shard_collect temp matches 07 run setblock 1183 1 132 pearlescent_froglight
execute if score $shard_collect temp matches 08 run setblock 1184 1 132 pearlescent_froglight
execute if score $shard_collect temp matches 09 run setblock 1184 1 133 pearlescent_froglight
execute if score $shard_collect temp matches 10 run setblock 1184 1 134 pearlescent_froglight
execute if score $shard_collect temp matches 11 run setblock 1185 1 134 pearlescent_froglight
execute if score $shard_collect temp matches 12 run setblock 1185 1 135 pearlescent_froglight
execute if score $shard_collect temp matches 13 run setblock 1186 1 135 pearlescent_froglight
execute if score $shard_collect temp matches 14 run setblock 1186 1 136 pearlescent_froglight
execute if score $shard_collect temp matches 15 run setblock 1187 1 136 pearlescent_froglight
execute if score $shard_collect temp matches 16 run setblock 1188 1 136 pearlescent_froglight
execute if score $shard_collect temp matches 17 run setblock 1188 1 137 pearlescent_froglight
execute if score $shard_collect temp matches 18 run setblock 1189 1 137 pearlescent_froglight
execute if score $shard_collect temp matches 19 run setblock 1190 1 137 pearlescent_froglight
execute if score $shard_collect temp matches 20 run setblock 1191 1 137 pearlescent_froglight
execute if score $shard_collect temp matches 21 run setblock 1192 1 137 pearlescent_froglight
execute if score $shard_collect temp matches 22 run setblock 1192 1 136 pearlescent_froglight
execute if score $shard_collect temp matches 23 run setblock 1193 1 136 pearlescent_froglight
execute if score $shard_collect temp matches 24 run setblock 1193 1 135 pearlescent_froglight
execute if score $shard_collect temp matches 01 run setblock 1196 1 133 pearlescent_froglight
execute if score $shard_collect temp matches 02 run setblock 1196 1 132 pearlescent_froglight
execute if score $shard_collect temp matches 03 run setblock 1197 1 132 pearlescent_froglight
execute if score $shard_collect temp matches 04 run setblock 1197 1 131 pearlescent_froglight
execute if score $shard_collect temp matches 05 run setblock 1197 1 130 pearlescent_froglight
execute if score $shard_collect temp matches 06 run setblock 1197 1 129 pearlescent_froglight
execute if score $shard_collect temp matches 07 run setblock 1197 1 128 pearlescent_froglight
execute if score $shard_collect temp matches 08 run setblock 1196 1 128 pearlescent_froglight
execute if score $shard_collect temp matches 09 run setblock 1196 1 127 pearlescent_froglight
execute if score $shard_collect temp matches 10 run setblock 1196 1 126 pearlescent_froglight
execute if score $shard_collect temp matches 11 run setblock 1195 1 126 pearlescent_froglight
execute if score $shard_collect temp matches 12 run setblock 1195 1 125 pearlescent_froglight
execute if score $shard_collect temp matches 13 run setblock 1194 1 125 pearlescent_froglight
execute if score $shard_collect temp matches 14 run setblock 1194 1 124 pearlescent_froglight
execute if score $shard_collect temp matches 15 run setblock 1193 1 124 pearlescent_froglight
execute if score $shard_collect temp matches 16 run setblock 1192 1 124 pearlescent_froglight
execute if score $shard_collect temp matches 17 run setblock 1192 1 123 pearlescent_froglight
execute if score $shard_collect temp matches 18 run setblock 1191 1 123 pearlescent_froglight
execute if score $shard_collect temp matches 19 run setblock 1190 1 123 pearlescent_froglight
execute if score $shard_collect temp matches 20 run setblock 1188 1 123 pearlescent_froglight
execute if score $shard_collect temp matches 21 run setblock 1188 1 123 pearlescent_froglight
execute if score $shard_collect temp matches 22 run setblock 1188 1 124 pearlescent_froglight
execute if score $shard_collect temp matches 23 run setblock 1187 1 124 pearlescent_froglight
execute if score $shard_collect temp matches 24 run setblock 1187 1 125 pearlescent_froglight
# 镇灵塔楼 - 3*6
execute if score $shard_collect temp matches 03 run setblock 1151 29 1101 red_candle[lit=true]
execute if score $shard_collect temp matches 06 run setblock 1149 29 1104 red_candle[lit=true]
execute if score $shard_collect temp matches 09 run setblock 1153 29 1104 red_candle[lit=true]
execute if score $shard_collect temp matches 12 run setblock 1149 29 1102 red_candle[lit=true]
execute if score $shard_collect temp matches 15 run setblock 1151 29 1105 red_candle[lit=true]
execute if score $shard_collect temp matches 18 run setblock 1153 29 1102 red_candle[lit=true]
# 山间湖谷 - 5*8
execute if score $shard_collect temp matches 05 run setblock 1130 70 -902 crying_obsidian
execute if score $shard_collect temp matches 10 run setblock 1131 70 -902 crying_obsidian
execute if score $shard_collect temp matches 15 run setblock 1132 70 -901 crying_obsidian
execute if score $shard_collect temp matches 20 run setblock 1130 70 -901 crying_obsidian
execute if score $shard_collect temp matches 25 run setblock 1130 70 -900 crying_obsidian
execute if score $shard_collect temp matches 30 run setblock 1132 70 -902 crying_obsidian
execute if score $shard_collect temp matches 35 run setblock 1131 70 -900 crying_obsidian
execute if score $shard_collect temp matches 40 run setblock 1132 70 -900 crying_obsidian

# 灵气等级
# 为了防止玩家找不到剩下的碎片
# 1 - 收集展示邻近碎片 - 30%
# 2 - 持续展示邻近碎片 - 50%
# 3 - 高亮全部剩余碎片 - 70%
# 聚光圣殿 - 08 / 12 / 16
execute if score $map temp matches 1 if score $shard_collect temp matches 08 run scoreboard players set $aura_rank temp -1
execute if score $map temp matches 1 if score $shard_collect temp matches 12 run scoreboard players set $aura_rank temp -2
execute if score $map temp matches 1 if score $shard_collect temp matches 16 run scoreboard players set $aura_rank temp -3
# 镇灵塔楼 - 05 / 09 / 13
execute if score $map temp matches 2 if score $shard_collect temp matches 05 run scoreboard players set $aura_rank temp -1
execute if score $map temp matches 2 if score $shard_collect temp matches 09 run scoreboard players set $aura_rank temp -2
execute if score $map temp matches 2 if score $shard_collect temp matches 13 run scoreboard players set $aura_rank temp -3
# 山间湖谷 - 12 / 20 / 28
execute if score $map temp matches 3 if score $shard_collect temp matches 12 run scoreboard players set $aura_rank temp -1
execute if score $map temp matches 3 if score $shard_collect temp matches 20 run scoreboard players set $aura_rank temp -2
execute if score $map temp matches 3 if score $shard_collect temp matches 28 run scoreboard players set $aura_rank temp -3

# 灵气更改
execute if score $aura_rank temp matches -3..-1 run playsound minecraft:block.sculk_shrieker.shriek player @a[team=!admin] 0 1000000 0 1000000
execute if score $aura_rank temp matches -1 run tellraw @a[team=!admin] [{"text":" » ","color":"#5599FF","bold":true},{"translate":"ms.info.rank.1","fallback":"灵气初起 ⚜ 碎片被收集时邻近的碎片将产生共鸣","bold":false},"\n"]
execute if score $aura_rank temp matches -2 run tellraw @a[team=!admin] [{"text":" » ","color":"#5555FF","bold":true},{"translate":"ms.info.rank.2","fallback":"灵气渐浓 ⚜ 灵魂附近的碎片将与之共鸣","bold":false},"\n"]
execute if score $aura_rank temp matches -3 run tellraw @a[team=!admin] [{"text":" » ","color":"#7744FF","bold":true},{"translate":"ms.info.rank.3","fallback":"灵气全开 ⚜ 场上所有剩余碎片开始共鸣","bold":false},"\n"]
execute if score $aura_rank temp matches -3 run execute as @e[tag=blue] run data modify entity @s Glowing set value 1b
execute if score $aura_rank temp matches -3..-1 run scoreboard players add $talent_007 temp 5
execute if score $aura_rank temp matches -3..-1 run scoreboard players operation $aura_rank temp *= #-1 data
execute if score $aura_rank temp matches 1 run execute at @a[distance=..1,tag=collecting,scores={countdown=601..}] as @e[tag=blue,distance=..16] run data modify entity @s Glowing set value 1b
execute if score $aura_rank temp matches 1 run execute at @a[distance=..1,tag=collecting,scores={countdown=601..}] as @e[tag=blue,distance=..16] run scoreboard players set @s countdown 3