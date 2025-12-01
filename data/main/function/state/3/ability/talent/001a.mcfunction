# 计算增加量
scoreboard players operation @s temp2 = $interact_speed setting
scoreboard players operation @s temp2 /= #4 data

scoreboard players operation @s temp += @s temp2