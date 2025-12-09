# 选择一个点位入场
tag @e[tag=marker_gold,tag=!enter_chosen,limit=1,sort=random] add enter_select
tag @e[tag=enter_select] add enter_chosen
tp @s @e[tag=enter_select,limit=1]
tag @e[tag=enter_select] remove enter_select
tag @s add transferred

# 如果还有人，则再次执行
execute as @r[tag=!transferred,team=guardian] run function debug:sub/game/enter/guardian

# 临时状态
effect give @s blindness 2 99 true