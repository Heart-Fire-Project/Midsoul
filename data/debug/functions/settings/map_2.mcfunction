scoreboard players set $map_select data 2
tellraw @a ["\n",{"text": " » ","color": "#BC78EC","bold": true},{"translate":"ms.setting.map_change","fallback":"%s 切换地图至 %s","color": "#BC78EC","with":[{"selector":"@s"},{"translate":"ms.map.2","fallback": "镇灵塔楼","color": "light_purple"}]},"\n"]
function debug:panel