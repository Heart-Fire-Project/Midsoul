# 特效
title @s actionbar [{"translate":"ms.skill.active","fallback":"技能触发","color":"#5599FF"}," » ",{"translate":"ms.skill.005","fallback":"锚定虚影"}]

# 生成一个锚点
summon marker ~ ~0.2 ~ {Tags:[S005_n,S005,game_entity]}
scoreboard players operation @e[tag=S005_n] player_id = @s player_id
particle minecraft:portal ~ ~0.2 ~ 0.2 0.3 0.2 1 128 force @a[team=soul]
tp @e[tag=S005_n] @s
playsound block.portal.trigger player @a[team=soul]

# 传送，但是要先确认
execute store result storage ms:s005 player_id short 1 run scoreboard players get @s player_id
function main:state/3/skill/005a with storage ms:s005
tag @e remove S005_n

# 设置计时
scoreboard players set @s skill_tick 18000

# 记录数据
scoreboard players add @s stat_temp_skill 1