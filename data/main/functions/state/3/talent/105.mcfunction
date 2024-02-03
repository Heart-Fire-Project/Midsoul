# 特效
title @s actionbar [{"translate":"ms.talent.active","fallback":"天赋触发","color":"gold"}," » ",{"translate":"ms.talent.105","fallback":"舍近求远"}]
playsound entity.evoker.prepare_attack player @s
particle enchant ~ ~0.2 ~ 0.2 0.1 0.2 1 128 force @a

# 发个光
effect give @a[team=soul,sort=furthest,limit=1] glowing 5 0

# 重置冷却
scoreboard players set @s[scores={talent_1=5}] talent_1_tick 12000
scoreboard players set @s[scores={talent_2=5}] talent_2_tick 12000

# 记录数据
scoreboard players add @s stat_temp_talent 1