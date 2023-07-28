scoreboard players set $gamelock data 0
tellraw @a ["\n",{"selector":"@s"},{"text": " » ","color": "light_purple","bold": true}, {"translate":"ms.setting.gamelock.off","fallback":"关闭游戏锁定","color": "light_purple"},"\n"]
function game:state/0/admin_settings