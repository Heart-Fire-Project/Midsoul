scoreboard players set $gamelock data 1
tellraw @a ["\n",{"selector":"@s"},{"text": " » ","color": "light_purple","bold": true}, {"translate":"ms.setting.gamelock.on","fallback": "开启游戏锁定","color": "light_purple"},"\n"]
function game:state/0/admin_settings