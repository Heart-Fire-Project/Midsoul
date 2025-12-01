# 结束擦刀
scoreboard players set @s state 0
tag @s remove hit_soul
function main:state/3/player/effect

# 判定：擦刀状态结束时
execute as @s[scores={talent_1=6}] run function main:state/3/ability/talent/106
execute as @s[scores={talent_2=6}] run function main:state/3/ability/talent/106