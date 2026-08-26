tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n "

# 和随机分配一起换队伍
scoreboard players set @s[scores={detect.interact=5401}] state 0
scoreboard players set @s[scores={detect.interact=5402}] state 1
scoreboard players set @s[scores={detect.interact=5403}] state 2

playsound ui.button.click player @s 0 1000000 0 120000
function main:state/1/role/panel