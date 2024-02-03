# 尽量选择离一个守卫者远的点位
execute at @r[team=protect] run tag @e[tag=marker_gold,tag=!enter_chosen,limit=1,sort=furthest,distance=..300] add map_enter
tag @e[tag=map_enter] add enter_chosen
tp @s @e[tag=map_enter,limit=1]
tag @e[tag=map_enter] remove map_enter
execute unless entity @e[tag=!enter_chosen,tag=marker_gold] run tp @s @r[team=soul]
execute unless entity @a[x=0,y=200,z=0,distance=..100,team=soul] run tag @e remove enter_chosen

# 赋予状态
effect clear @s
effect give @s speed 7 2

# 改变模式
gamemode adventure @s