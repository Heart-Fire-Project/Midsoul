title @s actionbar {"translate":"ms.talent.002active","fallback": "天赋触发 » 赴汤蹈火","color": "aqua"}

playsound entity.elder_guardian.curse player @s ~ ~ ~ 1 1
particle enchanted_hit ~ ~0.2 ~ 0.1 0.1 0.1 0.7 24 force @a

effect give @s speed 1 2
scoreboard players set @s[scores={talent_1=2}] talent_1_cd 12000
scoreboard players set @s[scores={talent_2=2}] talent_2_cd 12000

execute if entity @s[tag=!talent_tr] run function base:totorial/talent