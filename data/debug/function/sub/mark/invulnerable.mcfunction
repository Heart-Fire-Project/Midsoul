execute as @e[type=armor_stand] run data merge entity @s {Invulnerable:1b}
execute as @e[type=painting] run data merge entity @s {Invulnerable:1b}
execute as @e[type=item_frame] run data merge entity @s {Invulnerable:1b}
execute as @e[type=glow_item_frame] run data merge entity @s {Invulnerable:1b}
title @s actionbar {translate:"ms.mark.invulnerable",fallback:"场内装饰性实体已无敌",color:"white"}