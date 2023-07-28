scoreboard players set $gamelock data 1
tellraw @a ["\n",{"selector":"@s"},{"text": " » ","color": "light_purple","bold": true}, {"text": "开启游戏锁定\n","color": "light_purple"}]
function game:state/0/admin_settings