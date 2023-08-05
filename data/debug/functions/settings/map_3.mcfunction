scoreboard players set $map_select data 3
tellraw @a ["\n",{"text": " » ","color": "#BC78EC","bold": true},{"selector":"@s"},{"translate":"ms.setting.map_change","fallback":" 切换地图至 ","color": "#BC78EC"},{"translate":"ms.map.3","fallback": "山间湖谷","color": "light_purple"},"\n"]
function debug:panel