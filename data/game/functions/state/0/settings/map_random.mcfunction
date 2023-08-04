scoreboard players add $map_random data 1
execute if score $map_random data matches 2.. run scoreboard players set $map_random data 0
execute if score $map_random data matches 0 run tellraw @a ["\n",{"text": " » ","color": "#BC78EC","bold": true},{"selector":"@s"},{"translate":"ms.setting.map_random.off","fallback":" 开启了自选地图","color": "#BC78EC"},"\n"]
execute if score $map_random data matches 1 run tellraw @a ["\n",{"text": " » ","color": "#BC78EC","bold": true},{"selector":"@s"},{"translate":"ms.setting.map_random.on","fallback":" 关闭了自选地图","color": "#BC78EC"},"\n"]
function game:state/0/admin_settings