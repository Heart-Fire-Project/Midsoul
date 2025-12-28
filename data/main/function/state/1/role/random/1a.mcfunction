# 随机数
data modify storage ms:temp min set value 1
execute store result storage ms:temp max int 1 run scoreboard players get $total temp2
function base:random with storage ms:temp

# 选定
execute as @a[tag=game_player] run scoreboard players operation @s temp2 -= $random temp2
scoreboard players reset @a[tag=game_player,scores={temp2=..-1}] temp2
scoreboard players set $min temp2 1010000
scoreboard players operation $min temp2 < @a[scores={temp2=0..},team=prepare] temp2
execute as @a if score @s temp2 = $min temp2 run tag @s add guardian_target