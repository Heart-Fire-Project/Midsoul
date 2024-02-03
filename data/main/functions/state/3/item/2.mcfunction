# 特效
title @s actionbar [{"translate":"ms.item.active","fallback":"宝物触发","color":"#33FFAA"}," » ",{"translate":"ms.item.2","fallback":"共鸣引力"}]
playsound minecraft:block.sculk.charge player @a
particle minecraft:sculk_charge 0 ~ ~ ~ 0.2 0.3 0.2 0.1 100

# 传送
tp @e[tag=blue,distance=..7.5] @s

# 记录数据
scoreboard players set @s item 0
scoreboard players add @s stat_temp_item 1