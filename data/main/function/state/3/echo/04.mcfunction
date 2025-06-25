# 50% 的概率最终输出为 3
scoreboard players reset $E04 temp
function base:random {max:"2",min:"1"}

execute if score $random temp2 matches 1 run scoreboard players set $random temp2 3

execute if score $random temp2 matches 2 run scoreboard players set $E04 temp 1
execute if score $E04 temp matches 1 run function base:random {max:"6",min:"1"}
execute if score $E04 temp matches 1 if score $random temp2 matches 3.. run scoreboard players add $random temp2 1