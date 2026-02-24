# 为自定义地图添加常加载
function main:lib/map/data
scoreboard players reset $num temp
execute unless data storage ms:temp {forceload1:"-"} run scoreboard players add $num temp 1
execute unless data storage ms:temp {forceload2:""} run scoreboard players add $num temp 1
execute unless data storage ms:temp {forceload3:""} run scoreboard players add $num temp 1

execute if score $num temp matches 1 run function debug:sub/game/add_forceload/1 with storage ms:temp
execute if score $num temp matches 2 run function debug:sub/game/add_forceload/2 with storage ms:temp
execute if score $num temp matches 3 run function debug:sub/game/add_forceload/3 with storage ms:temp