# 选择一个点位入场
tag @e[tag=marker_gold,tag=!enter_chosen,limit=1,sort=random] add enter_select
tag @e[tag=enter_select] add enter_chosen
tp @s @e[tag=enter_select,limit=1]
tag @e[tag=enter_select] remove enter_select

# 检查是否出界
execute at @s unless entity @n[tag=map_center,distance=..1000] run tp @s 0 -5 0

# 如果还有人，则再次执行
execute as @r[x=0,y=0,z=0,distance=..300,team=guardian] run function main:state/2/player_enter/guardian

# 设置状态
function main:lib/action/remove_modifiers
effect clear @s
attribute @s movement_speed base set 0
attribute @s jump_strength base set 0
attribute @s water_movement_efficiency base set 10
effect give @s darkness 7 6 true
effect give @s glowing 7 6 true

# 更改模式
gamemode adventure @s

# 教程
advancement grant @s only main:tutorial/role/2