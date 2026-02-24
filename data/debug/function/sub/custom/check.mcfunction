# 为确保正确获取数据，借位
scoreboard players operation $value temp = $map data
scoreboard players operation $map data = $map setting

function main:lib/map/data
scoreboard players set $check_failure temp 0

# 只要有一个，则判定为数据有误
execute store result score $shard_summon temp run data get storage ms:temp shard_summon
execute store result score $shard_goal temp run data get storage ms:temp shard_goal
execute store result score $chest_summon temp run data get storage ms:temp chest_summon
execute store result score $chest_max temp run data get storage ms:temp chest_max
execute if score $shard_summon temp < $shard_goal temp run scoreboard players set $check_failure temp 1
execute if score $chest_max temp < $chest_summon temp run scoreboard players set $check_failure temp 1

# 只要有一个，则判定为数据缺失
execute if data storage ms:temp {forceload1:"-"} run scoreboard players set $check_failure temp 2
execute if data storage ms:temp {center:"-"} run scoreboard players set $check_failure temp 2
execute if data storage ms:temp {shard_summon:"-"} run scoreboard players set $check_failure temp 2
execute if data storage ms:temp {shard_goal:"-"} run scoreboard players set $check_failure temp 2
execute if data storage ms:temp {chest_summon:"-"} run scoreboard players set $check_failure temp 2
execute if data storage ms:temp {chest_max:"-"} run scoreboard players set $check_failure temp 2

# 把借位还回去
scoreboard players operation $map data = $value temp