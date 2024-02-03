# 特效
title @s actionbar [{"translate":"ms.talent.active","fallback":"天赋触发","color":"aqua"}," » ",{"translate":"ms.talent.001","fallback":"全神贯注"}]
playsound block.beacon.power_select player @s ~ ~ ~ 1000000 2
particle glow ~ ~0.2 ~ 0.2 0.1 0.2 5 15 force @a

# 给予的速度
effect give @s speed 3 1

# 记录开启状态
scoreboard players set @s[scores={talent_1=1}] talent_1_tick -7777777
tag @s[scores={talent_1=1}] add talent_1_on
scoreboard players set @s[scores={talent_2=1}] talent_2_tick -7777777
tag @s[scores={talent_2=1}] add talent_2_on