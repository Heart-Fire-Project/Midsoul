# 优先选择离守卫者超过 40 格的点位
execute as @e[tag=marker_gold] at @s unless entity @a[team=guardian,distance=..40] run tag @s add soul_select
tag @e[tag=soul_select,limit=1,sort=random,tag=!enter_chosen] add map_enter
execute unless entity @e[tag=map_enter] run tag @e[tag=marker_gold,tag=!enter_chosen] add map_enter
execute unless entity @e[tag=map_enter] run tp @s @r[team=soul]
tag @e[tag=map_enter] add enter_chosen
tp @s @e[tag=map_enter,limit=1]
tag @e[tag=map_enter] remove map_enter

# 如果还有人，则再次执行
execute as @r[x=0,y=0,z=0,distance=..300,team=soul] run function main:state/2/player_enter/soul

# 如果没人了就删掉所有 tag
execute unless entity @a[x=0,y=0,z=0,distance=..300,] run tag @e remove enter_chosen
execute unless entity @a[x=0,y=0,z=0,distance=..300,] run tag @e remove soul_select

# 回响效果
execute if score $echo data matches 6 run attribute @s movement_speed base set 0.11
execute if score $echo data matches 6 run attribute @s scale base set 0.7
execute if score $echo data matches 7 run attribute @s movement_speed base set 0.15

# 设置状态
effect clear @s
effect give @s speed 7 2 true

# 更改模式
gamemode adventure @s

# 教程
advancement grant @s only main:tutorial/role/1