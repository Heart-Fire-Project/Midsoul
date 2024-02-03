function base:modify_setting/next {setting:"$gamemode",storage:"data",limit:"3"}
execute if score $gamemode data matches ..0 run scoreboard players set $gamemode data 1

tellraw @s "\n\n\n\n\n\n\n"

function debug:sub/mode/info
playsound ui.button.click player @a
function main:state/0/refresh/sign

execute if score $state data matches 0 run function main:state/0/prepare_count with storage ms:mode