# 赢！
execute as @a[team=protect,distance=..20] run effect give @s slowness 12 5
execute if entity @a[team=protect,distance=..20] run effect give @s speed 12 4
execute as @a[team=protect,distance=20..] run effect give @s glowing 12

# 补充特效
title @s actionbar [{"translate":"ms.skill.active","fallback":"技能触发","color":"#5599FF"}," ✅ ",{"translate":"ms.skill.004","fallback":"铤而走险"}]
particle minecraft:dust_color_transition 0.5 0.5 1 1 0 1 0 ~ ~1.6 ~ 0.5 0.5 0.5 0.1 400