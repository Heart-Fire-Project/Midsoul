# 特效
title @s actionbar [{"translate":"ms.talent.active","fallback":"天赋触发","color":"gold"}," » ",{"translate":"ms.talent.103","fallback":"祛灵十字"}]
playsound entity.evoker.prepare_attack player @s
particle enchant ~ ~0.2 ~ 0.2 0.1 0.2 1 128 force @a

# 减时间
scoreboard players remove @s countdown 14

# 记录数据
scoreboard players add @s stat_temp_talent 1