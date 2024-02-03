tellraw @s "\n\n\n\n\n\n\n"
$scoreboard players set $gamemode data $(mode)

playsound ui.button.click player @a
function debug:sub/mode/info
function debug:sub/mode/sele
function main:state/0/refresh/sign

execute if score $state data matches 0 run function main:state/0/prepare_count with storage ms:mode