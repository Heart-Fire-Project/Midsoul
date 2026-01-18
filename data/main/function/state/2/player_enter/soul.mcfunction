# 优先选择离守卫者超过 40 格的点位
execute as @e[tag=marker_gold] at @s unless entity @a[team=guardian,distance=..40] run tag @s add enter_soul
tag @e[tag=enter_soul,limit=1,sort=random,tag=!enter_chosen] add enter_select
execute unless entity @e[tag=enter_select] run tag @e[tag=marker_gold,tag=!enter_chosen] add enter_select
execute unless entity @e[tag=enter_select] run tp @s @r[team=soul]
tag @e[tag=enter_select] add enter_chosen
tp @s @e[tag=enter_select,limit=1]
tag @e[tag=enter_select] remove enter_select

# 检查是否出界
execute at @s unless entity @n[tag=map_center,distance=..1000] run tp @s 0 -5 0

# 如果还有人，则再次执行
execute as @r[x=0,y=0,z=0,distance=..300,team=!admin] run function main:state/2/player_enter/soul

# 如果没人了就删掉所有 tag
execute unless entity @a[x=0,y=0,z=0,distance=..300,tag=game_player] run tag @e remove enter_chosen
execute unless entity @a[x=0,y=0,z=0,distance=..300,tag=game_player] run tag @e remove enter_soul

# 回响效果
function main:lib/action/remove_modifiers
execute if score $echo data matches 5 run attribute @s scale modifier add ms:echo -0.3 add_multiplied_base
execute if score $echo data matches 6 run attribute @s movement_speed modifier add ms:echo 0.5 add_multiplied_base

# 设置状态
effect clear @s
effect give @s speed 7 2 true

# 更改模式
gamemode adventure @s

# 教程
advancement grant @s only main:tutorial/role/1