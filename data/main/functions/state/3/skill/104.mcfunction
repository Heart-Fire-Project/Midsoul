# 特效
title @s actionbar [{"translate":"ms.skill.active","fallback":"技能触发","color":"red"}," » ",{"translate":"ms.skill.104","fallback":"恶灵诅咒"}]
playsound entity.ghast.scream player @s

# 诅咒！
tag @e[tag=gray,tag=!cursed,limit=1] add cursed
execute unless entity @e[tag=gray,tag=!cursed,limit=1] run function main:state/3/skill/104a

# 设置计时
scoreboard players set @s skill_tick 10000

# 统计数据
scoreboard players add @s stat_temp_skill 1