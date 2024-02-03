# 特效
title @s actionbar [{"translate":"ms.talent.active","fallback":"天赋触发","color":"gold"}," » ",{"translate":"ms.talent.104","fallback":"隐于迷雾"}]
playsound entity.evoker.cast_spell player @s
particle spit ~ ~1 ~ 0.2 0.1 0.2 0.7 60 force @a

# 触发初始效果
effect give @a[team=soul] darkness 5 0
effect give @s invisibility infinite 6

# 记录状态
scoreboard players set @s[scores={talent_1=4}] talent_1_tick -7777777
tag @s[scores={talent_1=4}] add talent_1_on
scoreboard players set @s[scores={talent_2=4}] talent_2_tick -7777777
tag @s[scores={talent_2=4}] add talent_2_on

# 记录数据
scoreboard players add @s stat_temp_talent 1