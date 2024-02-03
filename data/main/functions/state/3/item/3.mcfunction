# 特效
title @s actionbar [{"translate":"ms.item.active","fallback":"宝物触发","color":"#33FFAA"}," » ",{"translate":"ms.item.3","fallback":"无垠时界"}]
playsound minecraft:item.spyglass.use player @a
particle minecraft:dust_plume ~ ~0.2 ~ 0.2 0.3 0.2 0.1 128

# 减时间
scoreboard players remove @s skill_tick 6000

# 记录数据
scoreboard players set @s item 0
scoreboard players add @s stat_temp_item 1