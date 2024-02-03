# 特效
title @s actionbar [{"translate":"ms.talent.active","fallback":"天赋触发","color":"aqua"}," » ",{"translate":"ms.talent.002","fallback":"赴汤蹈火"}]
playsound entity.elder_guardian.curse player @s ~ ~ ~ 1 1
particle enchanted_hit ~ ~0.2 ~ 0.1 0.1 0.1 0.7 24 force @a

# 加速
effect give @s speed 3 2

# 重置冷却
scoreboard players set @s[scores={talent_1=2}] talent_1_tick 12000
scoreboard players set @s[scores={talent_2=2}] talent_2_tick 12000

# 记录数据
scoreboard players add @s stat_temp_talent 1