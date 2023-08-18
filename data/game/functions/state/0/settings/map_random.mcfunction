scoreboard players add $map_random data 1
execute if score $map_random data matches 2.. run scoreboard players set $map_random data 0
execute if score $map_random data matches 0 run tellraw @a ["\n",{"text": " » ","color": "#BC78EC","bold": true},{"translate":"ms.setting.map_random.off","fallback":"%s 关闭了随机地图","color": "#BC78EC","with":[{"selector":"@s"}]},"\n"]
execute if score $map_random data matches 1 run tellraw @a ["\n",{"text": " » ","color": "#BC78EC","bold": true},{"translate":"ms.setting.map_random.on","fallback":"%s 开启了随机地图","color": "#BC78EC","with":[{"selector":"@s"}]},"\n"]
function game:state/0/admin_settings