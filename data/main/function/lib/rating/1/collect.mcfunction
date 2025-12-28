scoreboard players operation $value temp = $soul_count data
execute if score $value temp matches ..3 run scoreboard players set $value temp 4
scoreboard players set $score temp 800
execute store result score $goal temp run data get storage ms:map shard_goal
scoreboard players operation $score temp /= $goal temp
scoreboard players operation $score temp *= $value temp
scoreboard players operation $score temp /= #4 data
tellraw @s [{text:" +",color:"#009295"},{score:{name:"$score",objective:"temp"}}," | ",{translate:"ms.rating.collect",fallback:"碎片收集"}]
scoreboard players operation $goal temp /= #4 data
scoreboard players set $score temp 30
scoreboard players operation $score temp *= $value temp
scoreboard players operation $score temp /= #4 data
execute if score @s temp.collect = $goal temp run tellraw @s [{text:" +",color:"#009295"},{score:{name:"$score",objective:"temp"}}," | ",{translate:"ms.rating.collect",fallback:"碎片收集"}," 25%"]
execute store result score $goal temp run data get storage ms:map shard_goal
scoreboard players operation $goal temp *= #2 data
scoreboard players operation $goal temp /= #5 data
scoreboard players set $score temp 50
scoreboard players operation $score temp *= $value temp
scoreboard players operation $score temp /= #4 data
execute if score @s temp.collect = $goal temp run tellraw @s [{text:" +",color:"#009295"},{score:{name:"$score",objective:"temp"}}," | ",{translate:"ms.rating.collect",fallback:"碎片收集"}," 40%"]