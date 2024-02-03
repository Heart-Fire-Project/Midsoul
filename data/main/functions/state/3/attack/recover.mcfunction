# 继续出击
scoreboard players set @s state 0
tag @s remove hit_soul
function main:state/3/effect

# 天赋
scoreboard players set @s[scores={talent_1=4}] talent_1_tick 18000
scoreboard players set @s[scores={talent_2=4}] talent_2_tick 18000
execute as @s[scores={talent_1=6}] at @s run function main:state/3/talent/106
execute as @s[scores={talent_2=6}] at @s run function main:state/3/talent/106