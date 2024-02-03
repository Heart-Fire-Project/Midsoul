#> base:random
#  随机数
#  @input storage max min
#  @output $random

$scoreboard players set $random_max $(storage) $(max)
$scoreboard players set $random_min $(storage) $(min)

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["random"],Duration:1}
$execute store result score $random $(storage) run data get entity @e[tag=random,limit=1] UUID[0]
kill @e[tag=random]
$scoreboard players operation $random_max $(storage) -= $random_min $(storage)
$scoreboard players add $random_max $(storage) 1
$scoreboard players operation $random $(storage) %= $random_max $(storage)
$scoreboard players operation $random $(storage) += $random_min $(storage)