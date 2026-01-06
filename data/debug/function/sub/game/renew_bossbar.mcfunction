$execute if score $state data matches 3 run bossbar set midsoul:info max $(shard_goal)
$execute if score $state data matches 3 run bossbar set midsoul:heed max $(shard_goal)
$execute if score $state data matches 3 run bossbar set midsoul:warn max $(shard_goal)

execute store result score $4_portal tick.general run data get storage ms:map original_goal
scoreboard players operation $4_portal tick.general *= #100 data
scoreboard players add $4_portal tick.general 1600
execute if score $state data matches 4 store result bossbar midsoul:info max run scoreboard players get $4_portal tick.general
execute if score $state data matches 4 store result bossbar midsoul:heed max run scoreboard players get $4_portal tick.general
execute if score $state data matches 4 store result bossbar midsoul:warn max run scoreboard players get $4_portal tick.general