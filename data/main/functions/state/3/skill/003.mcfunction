# 特效
title @s actionbar [{"translate":"ms.skill.active","fallback":"技能触发","color":"#5599FF"}," » ",{"translate":"ms.skill.003","fallback":"逆向追踪"}]
playsound entity.evoker.cast_spell player @s
particle minecraft:sculk_charge_pop ~ ~0.2 ~ 0.2 0.1 0.2 0.1 12 force @a

# 给效果
effect give @a[team=protect,distance=50..] glowing 10 0
effect give @a[team=protect,distance=36..50] glowing 15 0
effect give @a[team=protect,distance=25..36] glowing 20 0
effect give @a[team=protect,distance=12..25] glowing 25 0
effect give @a[team=protect,distance=0..12] glowing 30 0
effect give @a[team=protect,distance=12..25] slowness 5 1
effect give @a[team=protect,distance=0..12] slowness 10 1

# 设置计时
execute if entity @a[team=protect,distance=50..] run scoreboard players set @s skill_tick -200
execute if entity @a[team=protect,distance=36..50] run scoreboard players set @s skill_tick -300
execute if entity @a[team=protect,distance=25..36] run scoreboard players set @s skill_tick -400
execute if entity @a[team=protect,distance=12..25] run scoreboard players set @s skill_tick -100
execute if entity @a[team=protect,distance=0..12] run scoreboard players set @s skill_tick -200

# 记录数据
tag @s add skill_on
scoreboard players add @s stat_temp_skill 1