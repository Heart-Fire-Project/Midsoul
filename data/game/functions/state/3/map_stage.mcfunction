# I - 收集后展示邻近碎片 - 60%
# II - 持续展示邻近碎片 - 75%
# III - 高亮全部剩余碎片 - 90%

# 聚光圣殿 - 15 / 18 / 21
execute if score $map temp matches 1 if score $shard_collected temp matches 15 run scoreboard players set $soul_rank temp 10
execute if score $map temp matches 1 if score $shard_collected temp matches 18 run scoreboard players set $soul_rank temp 20
execute if score $map temp matches 1 if score $shard_collected temp matches 21 run scoreboard players set $soul_rank temp 30

# 镇灵塔楼 - 12 / 14 / 16
execute if score $map temp matches 2 if score $shard_collected temp matches 12 run scoreboard players set $soul_rank temp 10
execute if score $map temp matches 2 if score $shard_collected temp matches 14 run scoreboard players set $soul_rank temp 20
execute if score $map temp matches 2 if score $shard_collected temp matches 16 run scoreboard players set $soul_rank temp 30

# 山间湖谷 - 24 / 30 / 36
execute if score $map temp matches 3 if score $shard_collected temp matches 24 run scoreboard players set $soul_rank temp 10
execute if score $map temp matches 3 if score $shard_collected temp matches 30 run scoreboard players set $soul_rank temp 20
execute if score $map temp matches 3 if score $shard_collected temp matches 36 run scoreboard players set $soul_rank temp 30

# 处理
execute if score $soul_rank temp matches 10..30 run playsound minecraft:block.sculk_shrieker.shriek player @a[team=!admin] 0 1000000 0 1000000
execute if score $soul_rank temp matches 10 run tellraw @s [{"text": " » ","color": "blue","bold": true},{"translate":"ms.info.rank.1","fallback": "灵气初起 · I · 碎片被收集时邻近的碎片将产生共鸣","bold": false}]
execute if score $soul_rank temp matches 20 run tellraw @s [{"text": " » ","color": "blue","bold": true},{"translate":"ms.info.rank.2","fallback": "灵气渐浓 · II · 灵魂附近的碎片将与之共鸣","bold": false}]
execute if score $soul_rank temp matches 30 run tellraw @s [{"text": " » ","color": "blue","bold": true},{"translate":"ms.info.rank.3","fallback": "灵气全开 · III · 所有剩余碎片开始共鸣","bold": false}]
execute if score $soul_rank temp matches 30 run execute as @e[tag=blue] run data modify entity @s Glowing set value 1b
execute if score $soul_rank temp matches 10..30 run scoreboard players operation $soul_rank temp /= $10 data
execute if score $soul_rank temp matches 1 run execute at @a[tag=collect_finish] as @e[tag=blue,distance=..12] run data modify entity @s Glowing set value 1b
execute if score $soul_rank temp matches 1 run schedule function game:state/3/glow_take 3s replace