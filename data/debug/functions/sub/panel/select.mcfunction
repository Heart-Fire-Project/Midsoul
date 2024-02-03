tellraw @s "\n\n\n\n\n\n\n"
$scoreboard players set $game$(type) data $(num)
execute if score $state data matches 0 run function main:state/0/refresh/sign
$execute if score $state data matches 0 run function debug:sub/$(type)/info
function debug:panel