# 杀光光
kill @e[tag=game_entity]
kill @e[tag=animation_entity]
execute as @e[tag=map_entity] run tp @s ~ -100 ~

# 重置地图变量
function main:lib/map/entity/general
function main:lib/map/variety/reset

# 设置地图信息
function main:lib/map/data
function main:lib/map/sync

# 相关回响
function main:lib/map/echo

# 特别的，如果需要下雨可以直接下
weather clear 77419
execute if score $echo data matches 4 run weather thunder 88614