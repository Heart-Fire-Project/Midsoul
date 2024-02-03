# 特效
title @s actionbar [{"translate":"ms.skill.active","fallback":"技能触发","color":"red"}," » ",{"translate":"ms.skill.102","fallback":"灵力掌控"}]
playsound entity.illusioner.cast_spell player @s
particle dust_color_transition 0.3 0.7 1 1 1 1 0 ~ ~0.2 ~ 0.1 0.1 0.1 1 10 force @a

# 设置计时
scoreboard players set @s skill_tick -600

# 统计数据
scoreboard players add @s stat_temp_skill 1
tag @s add skill_on