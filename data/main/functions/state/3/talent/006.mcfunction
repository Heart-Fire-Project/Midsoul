# 特效
title @s actionbar [{"translate":"ms.talent.active","fallback":"天赋触发","color":"aqua"}," » ",{"translate":"ms.talent.006","fallback":"碎片注入"}]
playsound minecraft:block.lantern.place player @s ~ ~ ~ 1 1
particle wax_on ~ ~0.3 ~ 0.25 0.3 0.25 3 7 force @a

# 延时间
scoreboard players add @a[team=soul,scores={state=1}] countdown 50

# 记录数据
scoreboard players add @s stat_temp_talent 1