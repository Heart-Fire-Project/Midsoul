scoreboard players add $gamelock data 1
execute if score $gamelock data matches 2.. run scoreboard players set $gamelock data 0
execute if score $gamelock data matches 0 run tellraw @a ["\n",{"text": " » ","color": "#BC78EC","bold": true},{"translate":"ms.setting.gamelock.off","fallback":"%s 开启了游戏锁定","color": "#BC78EC","with":[{"selector":"@s"}]},"\n"]
execute if score $gamelock data matches 1 run tellraw @a ["\n",{"text": " » ","color": "#BC78EC","bold": true},{"translate":"ms.setting.gamelock.on","fallback":"%s 关闭了游戏锁定","color": "#BC78EC","with":[{"selector":"@s"}]},"\n"]
function game:state/0/admin_settings