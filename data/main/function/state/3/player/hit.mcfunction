# 出击
# 进入擦刀状态
scoreboard players set @s countdown 1400
scoreboard players set @s state 1
function main:state/3/player/effect
tag @s add hit_soul

# 判定：进入擦刀状态时
execute as @s[scores={talent_1=3}] at @s run function main:state/3/ability/talent/103
execute as @s[scores={talent_2=3}] at @s run function main:state/3/ability/talent/103
scoreboard players set @s[scores={talent_1=4}] talent_1_tick 18000
scoreboard players set @s[scores={talent_2=4}] talent_2_tick 18000

# 统计数据
scoreboard players add @s temp.hit 1

# 教程
advancement grant @s only main:tutorial/attack/2