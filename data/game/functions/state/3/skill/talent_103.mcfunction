title @s actionbar [{"translate":"ms.talent.active","fallback":"天赋触发","color": "red"}," » ",{"translate":"ms.talent.103","fallback":"祛灵十字"}]

playsound entity.evoker.prepare_attack player @s
particle enchant ~ ~0.2 ~ 0.2 0.1 0.2 1 128 force @a
scoreboard players remove @s countdown 14

execute as @s[tag=!talent_tr] run function base:totorial/talent