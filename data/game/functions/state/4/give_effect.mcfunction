effect clear @s
effect give @s saturation infinite 10 true
attribute @s[team=alive] generic.movement_speed base set 0.14
attribute @s[team=protect] generic.movement_speed base set 0.16
effect give @s[team=alive,scores={state=0}] glowing infinite 49 true
effect give @s[scores={state=1}] slowness infinite 49 true
effect give @s[scores={state=1}] darkness infinite 49 true
effect give @s[scores={state=1}] resistance infinite 49 true
effect give @s[scores={state=1}] jump_boost infinite 199 true
attribute @s generic.attack_damage base set 0