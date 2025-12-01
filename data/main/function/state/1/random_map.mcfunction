# 随机地图
execute if data storage ms:setting {random_custom:false} run data modify storage ms:temp min set value 1
execute if data storage ms:setting {random_custom:true} run data modify storage ms:temp min set value -9
execute store result storage ms:temp max int 1 run scoreboard players get $map_max data
function base:random with storage ms:temp
scoreboard players operation $map data = $random temp2

# 检查自定义地图可用性，标准为四个关键数据不留空且至少有一个加载区
function debug:sub/custom/check

# 检查是否随机回来了
execute if score $map data matches 0 run scoreboard players set $check_failure temp 2

execute if score $check_failure temp matches 1..2 run function main:state/1/random_map