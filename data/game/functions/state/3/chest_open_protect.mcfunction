execute as @s[tag=!open_chest_tr] run function base:tutorial/open_chest
effect give @s speed 2 1 true
effect give @a[limit=1,sort=furthest,team=alive] glowing 3 1 true
scoreboard players add @s stat_temp_open 1