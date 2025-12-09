# 平衡性速率调整
scoreboard players operation @s temp2 = $interact_speed setting
scoreboard players operation @s temp2 *= $balanced_speed state
scoreboard players operation @s temp2 /= #100 data

scoreboard players operation @s temp += @s temp2