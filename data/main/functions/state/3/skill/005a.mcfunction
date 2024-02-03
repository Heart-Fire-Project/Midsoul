$execute if entity @e[tag=S005,scores={player_id=$(player_id)},tag=!S005_n] run tag @s add S005_t
$execute if entity @e[tag=S005,scores={player_id=$(player_id)},tag=!S005_n] run particle minecraft:falling_obsidian_tear ~ ~1.2 ~ 0.2 0.3 0.2 3 256 force @a
$execute as @e[tag=S005,scores={player_id=$(player_id)},tag=!S005_n] run tp @a[tag=S005_t] @s
$execute at @e[tag=S005,scores={player_id=$(player_id)},tag=!S005_n] run playsound entity.enderman.teleport player @a ~ ~ ~
$kill @e[tag=S005,scores={player_id=$(player_id)},tag=!S005_n]
$scoreboard players reset @e[tag=S005,scores={player_id=$(player_id)},tag=!S005_n] player_id
tag @a remove S005_t