# 特效
title @s actionbar [{"translate":"ms.skill.active","fallback":"技能触发","color":"red"}," » ",{"translate":"ms.skill.103","fallback":"唤灵留迹"}]
playsound block.bell.resonate player @s
particle end_rod ~ ~0.3 ~ 0.2 0.1 0.2 0.2 64 force @a

# 选择一个目标
execute store result score @s skill_103 run scoreboard players get @p[team=soul,scores={state=0}] player_id
execute store result storage ms:s103 player_id short 1 run scoreboard players get @s skill_103
function main:state/3/skill/103a with storage ms:s103
tp @s @e[tag=S103,limit=1]
tag @e remove S103

# 设置计时
scoreboard players set @s skill_tick -300

# 统计数据
scoreboard players add @s stat_temp_skill 1
tag @s add skill_on