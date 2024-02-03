# 特效
title @s actionbar [{"translate":"ms.talent.active","fallback":"天赋触发","color":"gold"}," » ",{"translate":"ms.talent.106","fallback":"目标探知"}]
playsound item.spyglass.use player @a ~ ~ ~ 10 0.5
particle minecraft:crimson_spore ~ ~0.3 ~ 0.2 0.1 0.2 0.1 24 force @a

# 发光
effect give @p[team=soul,scores={state=0}] glowing 3 0

# 记录数据
scoreboard players add @s stat_temp_talent 1