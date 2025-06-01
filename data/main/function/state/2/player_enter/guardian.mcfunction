# 选择一个点位入场
tag @e[tag=marker_gold,tag=!enter_chosen,limit=1,sort=random] add map_enter
tag @e[tag=map_enter] add enter_chosen
tp @s @e[tag=map_enter,limit=1]
tag @e[tag=map_enter] remove map_enter

# 如果还有人，则再次执行
execute as @r[x=0,y=0,z=0,distance=..300,team=guardian] run function main:state/2/player_enter/guardian

# 设置状态
effect clear @s
attribute @s movement_speed base set 0
attribute @s jump_strength base set 0
effect give @s darkness 7 6 true
effect give @s glowing 7 6 true

# 更改模式
gamemode adventure @s

# 教程
advancement grant @s only main:tutorial/role/2