# 特效
title @s actionbar [{"translate":"ms.item.active","fallback":"宝物触发","color":"#33FFAA"}," » ",{"translate":"ms.item.6","fallback":"太空体验"}]
playsound minecraft:entity.firework_rocket.launch player @a

# 给予效果
effect give @a[team=protect] levitation 5 255 true

# 设置计时
scoreboard players set @s item_tick -100

# 记录数据
scoreboard players add @s stat_temp_item 1
tag @s add item_on