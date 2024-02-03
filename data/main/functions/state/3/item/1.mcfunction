# 特效
title @s actionbar [{"translate":"ms.item.active","fallback":"宝物触发","color":"#33FFAA"}," » ",{"translate":"ms.item.1","fallback":"无懈可击"}]
playsound minecraft:block.anvil.place player @a

# 给予效果
effect give @s resistance 1 4

# 设置计时
scoreboard players set @s item_tick -16

# 记录数据
scoreboard players add @s stat_temp_item 1
tag @s add item_on