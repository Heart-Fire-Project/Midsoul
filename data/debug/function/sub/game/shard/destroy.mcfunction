execute store result score $summon temp run data get storage ms:map shard_summon
execute store result score $goal temp run data get storage ms:map shard_goal
execute store result score $original_summon temp run data get storage ms:map original_summon
execute store result score $original_goal temp run data get storage ms:map original_goal

execute if score $echo data matches 9 run scoreboard players operation $original_summon temp -= $summon temp
execute if score $echo data matches 9 run execute store result storage ms:temp num int 1 run scoreboard players get $original_summon temp
function debug:sub/game/shard/kill_shard with storage ms:temp