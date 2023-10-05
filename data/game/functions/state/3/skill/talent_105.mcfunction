title @s actionbar [{"translate":"ms.talent.active","fallback":"天赋触发","color": "red"}," » ",{"translate":"ms.talent.105","fallback":"舍近求远"}]
scoreboard players add @s stat_temp_talent 1

effect give @a[team=alive,sort=furthest] glowing 5 0
scoreboard players set @s[scores={talent_1=5}] talent_1_cd 12000
scoreboard players set @s[scores={talent_2=5}] talent_2_cd 12000

execute as @s[tag=!talent_tr] run function base:tutorial/talent