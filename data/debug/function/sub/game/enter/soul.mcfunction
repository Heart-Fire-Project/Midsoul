# 优先选择离守卫者超过 40 格的点位
execute as @e[tag=marker_gold] at @s unless entity @a[team=guardian,distance=..40] run tag @s add enter_soul
tag @e[tag=enter_soul,limit=1,sort=random,tag=!enter_chosen] add enter_select
execute unless entity @e[tag=enter_select] run tag @e[tag=marker_gold,tag=!enter_chosen] add enter_select
execute unless entity @e[tag=enter_select] run tp @s @r[team=soul]
tag @e[tag=enter_select] add enter_chosen
tp @s @e[tag=enter_select,limit=1]
tag @e[tag=enter_select] remove enter_select
tag @s add transferred

# 如果还有人，则再次执行
execute as @r[tag=!transferred,team=soul] run function debug:sub/game/enter/soul

# 如果没人了就删掉所有 tag
execute unless entity @a[tag=!transferred,tag=game_player] run tag @e remove enter_chosen
execute unless entity @a[tag=!transferred,tag=game_player] run tag @e remove enter_soul
execute unless entity @a[tag=!transferred,tag=game_player] run tag @a remove transferred

# 临时状态
effect give @s blindness 2 99 true