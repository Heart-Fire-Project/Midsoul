execute as @s[tag=!cursed_chest_tr] run function base:tutorial/cursed_chest
effect give @s[team=alive] glowing 1 0 true
effect give @s[team=alive] slowness 1 0 true
effect give @s[team=protect] speed 1 0 true
execute as @s[team=protect] run effect give @a[sort=furthest,team=alive] glowing 1 0 true