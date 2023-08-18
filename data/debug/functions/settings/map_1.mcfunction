scoreboard players set $map_select data 1
tellraw @a ["\n",{"text": " » ","color": "#BC78EC","bold": true},{"translate":"ms.setting.map_change","fallback":"%s 切换地图至 %s","color": "#BC78EC","with":[{"selector":"@s"},{"translate":"ms.map.1","fallback": "聚光圣殿","color": "light_purple"}]},"\n"]
function debug:panel