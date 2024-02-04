# 出击
advancement revoke @s only main:damage_dealt
scoreboard players set @s countdown 71
scoreboard players set @s state 1
function main:state/3/effect
tag @s add hit_soul

# 天赋
execute as @s[scores={talent_1=3}] at @s run function main:state/3/talent/103
execute as @s[scores={talent_2=3}] at @s run function main:state/3/talent/103

# 统计数据
scoreboard players add @s stat_temp_hit 1