# 重置地图变量
execute if score $map data matches 1 run fill 1183 13 1137 1197 13 1123 bone_block replace pearlescent_froglight
execute if score $map data matches 2 run fill 1049 41 -999 1053 41 -995 red_candle[lit=false] replace red_candle
execute if score $map data matches 3 run fill -870 20 1100 -868 20 1098 obsidian replace crying_obsidian

# 设置地图信息
execute if score $map data matches 1 run data merge storage ms:map {shard_goal:24s,shard_summon:30s,chest_summon:5s,chest_max:14s,original_goal:24s}
execute if score $map data matches 2 run data merge storage ms:map {shard_goal:18s,shard_summon:21s,chest_summon:4s,chest_max:10s,original_goal:18s}
execute if score $map data matches 3 run data merge storage ms:map {shard_goal:40s,shard_summon:48s,chest_summon:6s,chest_max:15s,original_goal:40s}

# 相关回响
execute store result score $goal temp run data get storage ms:map shard_goal
execute if score $echo data matches 2 run scoreboard players operation $goal temp *= #7 data
execute if score $echo data matches 2 run scoreboard players operation $goal temp /= #10 data
execute if score $echo data matches 3 run scoreboard players set $goal temp 9
execute store result storage ms:map shard_goal short 1 run scoreboard players get $goal temp
execute store result score $summon temp run data get storage ms:map shard_summon
execute if score $echo data matches 3 run scoreboard players set $summon temp 3
execute store result storage ms:map shard_summon short 1 run scoreboard players get $summon temp