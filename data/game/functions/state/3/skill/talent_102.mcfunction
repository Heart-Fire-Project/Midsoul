title @s actionbar [{"translate":"ms.talent.active","fallback":"天赋触发","color": "red"}," » ",{"translate":"ms.talent.102","fallback":"火冒三丈"}]
scoreboard players add @s stat_temp_talent 1

playsound entity.ravager.roar player @s
particle angry_villager ~ ~1.8 ~ 0.3 0.1 0.3 1 12 force @a
effect give @a[team=alive] glowing 3 0
effect give @a[team=alive] slowness 3 0
scoreboard players set @s[scores={talent_1=2}] talent_1_cd 12000
scoreboard players set @s[scores={talent_2=2}] talent_2_cd 12000

execute as @s[tag=!talent_tr] run function base:tutorial/talent