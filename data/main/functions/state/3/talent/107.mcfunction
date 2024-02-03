# 特效
title @s actionbar [{"translate":"ms.talent.active","fallback":"天赋触发","color":"gold"}," » ",{"translate":"ms.talent.107","fallback":"碎片侵蚀"}]
playsound minecraft:block.sculk_catalyst.bloom player @s ~ ~ ~ 10000
particle minecraft:firework ~ ~2.2 ~

# 发个光
tag @e[sort=random,limit=1,tag=blue] add T107

# 重置冷却
scoreboard players set @s[scores={talent_1=7}] talent_1_tick 8000
scoreboard players set @s[scores={talent_2=7}] talent_2_tick 8000

# 记录数据
scoreboard players add @s stat_temp_talent 1
scoreboard players add @s talent_107 1