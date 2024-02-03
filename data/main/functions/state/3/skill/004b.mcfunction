# 寄！
execute if entity @a[team=protect,distance=..20] run effect give @s slowness 12 3
execute unless entity @a[team=protect,distance=..20] run tp @s @p[team=protect]
execute unless entity @a[team=protect,distance=..20] run effect give @s slowness 12 6

# 补充特效
title @s actionbar [{"translate":"ms.skill.active","fallback":"技能触发","color":"#5599FF"}," ❎ ",{"translate":"ms.skill.004","fallback":"铤而走险"}]
particle minecraft:dust_color_transition 0.5 0.5 1 1 1 0 0 ~ ~1.6 ~ 0.3 0.2 0.3 0.1 400