# 入场
tag @e[tag=marker_gold,tag=!enter_chosen,limit=1,sort=random] add map_enter
tag @e[tag=map_enter,limit=1,sort=random] add enter_chosen
tp @s @e[tag=map_enter,limit=1]
tag @e[tag=map_enter] remove map_enter

# 赋予状态
effect clear @s
effect give @s speed 13 2 false

# 改变模式
gamemode adventure @s

# 教学
tellraw @s[tag=!soul_tr] [{"text": " » ","bold": true,"color": "aqua"},{"translate":"ms.tutorial.soul.enter","fallback": "现在你可以观察地图, 并且远离发着红光的地方……","bold": false}]