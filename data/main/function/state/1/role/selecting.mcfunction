tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

# 和随机分配一起换队伍
execute if score @s detect.interact matches 5401 run scoreboard players set @s state 0
execute if score @s detect.interact matches 5402 run scoreboard players set @s state 1
execute if score @s detect.interact matches 5403 run scoreboard players set @s state 2

playsound ui.button.click player @s 0 1000000 0 120000
function main:state/1/role/panel