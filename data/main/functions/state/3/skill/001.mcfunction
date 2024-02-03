# 特效
title @s actionbar [{"translate":"ms.skill.active","fallback":"技能触发","color":"#5599FF"}," » ",{"translate":"ms.skill.001","fallback":"幻影迷踪"}]
playsound entity.illusioner.mirror_move player @s
particle minecraft:cloud ~ ~1 ~ 0.2 0.1 0.2 0.7 256 force @a

# 给效果
effect give @s invisibility 10 0
effect give @s speed 10 4

# 设置计时
scoreboard players set @s skill_tick -200

# 记录数据
scoreboard players add @s stat_temp_skill 1
tag @s add skill_on