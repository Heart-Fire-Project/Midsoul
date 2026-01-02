# 回响改数据
execute store result score $goal temp run data get storage ms:map shard_goal
execute if score $echo data matches 2 run scoreboard players operation $goal temp *= #7 data
execute if score $echo data matches 2 run scoreboard players operation $goal temp /= #10 data
execute if score $echo data matches 9 run scoreboard players set $goal temp 9
execute store result storage ms:map shard_goal int 1 run scoreboard players get $goal temp
execute store result score $summon temp run data get storage ms:map shard_summon
execute if score $echo data matches 9 store result score $summon temp run data get storage ms:map size
execute store result storage ms:map shard_summon int 1 run scoreboard players get $summon temp