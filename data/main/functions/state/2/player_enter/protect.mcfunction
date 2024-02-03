# 随机选择一个点位入场
tag @e[tag=marker_gold,tag=!enter_chosen,limit=1,sort=random] add map_enter
tag @e[tag=map_enter] add enter_chosen
tp @s @e[tag=map_enter,limit=1]
tag @e[tag=map_enter] remove map_enter

# 赋予状态
effect clear @s
effect give @s darkness 7 6 true
effect give @s slowness 7 9 true
effect give @s jump_boost 7 199 true
effect give @s glowing 7 6 true
effect give @s bad_omen 7 6

# 改变模式
gamemode adventure @s