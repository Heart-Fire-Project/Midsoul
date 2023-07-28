scoreboard players set $gamelock data 0
tellraw @a ["\n",{"selector":"@s"},{"text": " » ","color": "light_purple","bold": true}, {"text": "关闭游戏锁定\n","color": "light_purple"}]
function game:state/0/admin_settings