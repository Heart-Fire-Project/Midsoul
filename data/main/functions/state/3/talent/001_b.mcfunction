# 特效
title @s actionbar [{"translate":"ms.talent.active","fallback":"天赋触发","color":"aqua"}," » ",{"translate":"ms.talent.001","fallback":"全神贯注"}]
playsound block.beacon.power_select player @s ~ ~ ~ 1000000 2
particle glow ~ ~0.2 ~ 0.2 0.1 0.2 5 15 force @a

# 计算增加的进度
scoreboard players operation @s cacu = $collect_speed data
scoreboard players operation @s cacu *= #6 data
scoreboard players operation @s countdown += @s cacu

# 重新记录
scoreboard players set @s[scores={talent_1=1}] talent_1_tick 7777777
tag @s[scores={talent_1=1}] remove talent_1_on
scoreboard players set @s[scores={talent_2=1}] talent_2_tick 7777777
tag @s[scores={talent_2=1}] remove talent_2_on

# 记录数据
scoreboard players add @s stat_temp_talent 1