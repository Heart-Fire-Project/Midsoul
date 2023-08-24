# 入场
tag @e[tag=marker_gold,tag=!enter_chosen,limit=1,sort=random] add map_enter
tag @e[tag=map_enter,limit=1,sort=random] add enter_chosen
tp @s @e[tag=map_enter,limit=1]
tag @e[tag=map_enter] remove map_enter
execute unless entity @e[tag=!enter_chosen,tag=marker_blue] run tp @s @r[team=alive]
execute unless entity @a[x=0,y=263,z=0,distance=..100,team=alive] run tag @e remove enter_chosen

# 赋予状态
effect clear @s
effect give @s speed 13 2 false

# 改变模式
gamemode adventure @s

# 教学
execute if entity @s[tag=!soul_tr] run function base:tutorial/enter_game