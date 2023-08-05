scoreboard players set $map_select data 2
tellraw @a ["\n",{"text": " » ","color": "#BC78EC","bold": true},{"selector":"@s"},{"translate":"ms.setting.map_change","fallback":" 切换地图至 ","color": "#BC78EC"},{"translate":"ms.map.2","fallback": "镇灵塔楼","color": "light_purple"},"\n"]
function debug:panel