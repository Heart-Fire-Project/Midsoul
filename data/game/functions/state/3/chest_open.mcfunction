scoreboard players set $random_min data 1
scoreboard players set $random_max data 1
function base:random
execute store result score @s item run scoreboard players get $random data