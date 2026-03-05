$execute if score $state data matches 3 run bossbar set midsoul:info max $(shard_goal)
$execute if score $state data matches 3 run bossbar set midsoul:heed max $(shard_goal)
$execute if score $state data matches 3 run bossbar set midsoul:warn max $(shard_goal)

execute store result score $value temp run data get storage ms:map original_goal
scoreboard players operation $value temp *= #100 data
scoreboard players add $value temp 1600
execute if score $state data matches 4 store result bossbar midsoul:info max run scoreboard players get $value temp
execute if score $state data matches 4 store result bossbar midsoul:heed max run scoreboard players get $value temp
execute if score $state data matches 4 store result bossbar midsoul:warn max run scoreboard players get $value temp