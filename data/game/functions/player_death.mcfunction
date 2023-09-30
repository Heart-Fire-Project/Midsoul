scoreboard players add @a[tag=hit_soul,team=protect] stat_temp_down 1
tag @a remove hit_soul
execute if score $state data matches 3 as @s[team=alive] run function game:state/3/soul_dying
execute if score $state data matches 4 as @s[team=alive] run function game:state/4/soul_dying