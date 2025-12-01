# 无特效，直接进行计算
tag @s[scores={talent_1=7}] add talent_1_on
tag @s[scores={talent_2=7}] add talent_2_on

# 他现在会多算一位，所以真的有区别了
scoreboard players operation @s temp2 = $interact_speed setting
scoreboard players operation @s temp2 *= $talent_007 data
scoreboard players operation @s temp2 /= #100 data

scoreboard players operation @s temp += @s temp2