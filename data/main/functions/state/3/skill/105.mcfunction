# 特效
title @s actionbar [{"translate":"ms.skill.active","fallback":"技能触发","color":"red"}," » ",{"translate":"ms.skill.105","fallback":"残影迷踪"}]
playsound minecraft:entity.creeper.primed ambient @a
particle minecraft:campfire_signal_smoke ~ ~0.5 ~ 0.2 1 0.2 0 256

# 给效果
effect give @s speed 15 6
effect give @s invisibility 15 0

# 设置计时
scoreboard players set @s skill_tick -300

# 统计数据
scoreboard players add @s stat_temp_skill 1
tag @s add skill_on