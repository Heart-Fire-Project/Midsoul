function base:modify_setting/next {setting:"$gamemap",storage:"data",limit:"4"}

tellraw @s "\n\n\n\n\n\n\n"

function debug:sub/map/info
playsound ui.button.click player @a
function main:state/0/refresh/sign