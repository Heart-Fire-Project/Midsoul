execute as @e[tag=marker_black] at @s run execute as @a at @s run tag @s remove in_locker
execute as @e[tag=marker_black] at @s run execute as @a[dy=-1] at @s run tag @s add in_locker
function game:state/3/give_effect