scoreboard players set @s stat_level 0
scoreboard players set @s stat_exp 0
scoreboard players set @s temp_exp 0

effect clear @s
effect give @s saturation infinite 0 true
effect give @s instant_health 1 10 true
effect give @s resistance infinite 4 true
effect give @s weakness infinite 4 true
effect give @s regeneration infinite 4 true

attribute @s generic.attack_damage base set 0