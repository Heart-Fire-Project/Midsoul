# 选择一个点位入场
tag @e[tag=marker_gold,tag=!enter_chosen,limit=1,sort=random] add map_enter
tag @e[tag=map_enter] add enter_chosen
tp @s @e[tag=map_enter,limit=1]
tag @e[tag=map_enter] remove map_enter
tag @s add transferred

# 如果还有人，则再次执行
execute as @r[tag=!transferred,team=guardian] run function debug:sub/game/enter/guardian

# 临时状态
effect give @s blindness 2 99 true