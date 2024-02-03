# 特效
title @s actionbar [{"translate":"ms.talent.active","fallback":"天赋触发","color":"aqua"}," » ",{"translate":"ms.talent.004","fallback":"魂魄汲取"}]
playsound block.amethyst_block.chime player @s ~ ~ ~ 5 1
particle dust_color_transition 0.16 0.98 0.87 1.5 0.78 0.07 1 ~ ~0.3 ~ 0.25 0.1 0.25 1 24 force @a

# 回血
effect give @s regeneration 1 2

# 记录数据
scoreboard players add @s stat_temp_talent 1