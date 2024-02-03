# 特效
title @s actionbar [{"translate":"ms.skill.active","fallback":"技能触发","color":"red"}," » ",{"translate":"ms.skill.101","fallback":"虔诚力场"}]
playsound block.enchantment_table.use player @s
particle totem_of_undying ~ ~1 ~ 0.2 0.1 0.2 0.1 64 force @a

# 给效果
effect give @p[team=soul] glowing 14 0
effect give @a[team=soul] glowing 7 0

# 设置计时
scoreboard players set @s skill_tick -140

# 统计数据
scoreboard players add @s stat_temp_skill 1
tag @s add skill_on