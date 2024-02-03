# 特效
title @s actionbar [{"translate":"ms.talent.active","fallback":"天赋触发","color":"gold"}," » ",{"translate":"ms.talent.102","fallback":"火冒三丈"}]
playsound entity.ravager.roar player @s
particle angry_villager ~ ~1.8 ~ 0.3 0.1 0.3 1 12 force @a

# 发光
effect give @a[team=soul] glowing 3 0
effect give @a[team=soul] slowness 3 0

# 重置冷却
scoreboard players set @s[scores={talent_1=2}] talent_1_tick 12000
scoreboard players set @s[scores={talent_2=2}] talent_2_tick 12000

# 记录数据
scoreboard players add @s stat_temp_talent 1