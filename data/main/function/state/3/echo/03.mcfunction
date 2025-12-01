# 60% 的概率最终输出为 3
scoreboard players reset $E03 temp
execute store result score $random temp2 run random value 1..5

execute if score $random temp2 matches 1..3 run scoreboard players set $random temp2 3

execute if score $random temp2 matches 4..5 run scoreboard players set $E03 temp 1
execute if score $E03 temp matches 1 run scoreboard players operation $num temp = $item_max data
execute if score $E03 temp matches 1 store result storage ms:temp max int 1 run scoreboard players remove $num temp 1
execute if score $E03 temp matches 1 run data modify storage ms:temp min set value 1
execute if score $E03 temp matches 1 run function base:random with storage ms:temp
execute if score $E03 temp matches 1 if score $random temp2 matches 3.. run scoreboard players add $random temp2 1