scoreboard players set $random_max data 100
scoreboard players set $random_min data 70
function base:random

scoreboard players operation @s stat_exp += $random data
scoreboard players operation @s temp_exp -= $random data

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.7 2

schedule function base:exp/process/judge 1t replace