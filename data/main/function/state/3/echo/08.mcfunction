# 计算降低的冷却速率
scoreboard players operation @s temp2 = $interact_speed setting
scoreboard players operation @s temp2 *= #2 data
scoreboard players operation @s temp2 /= #5 data
scoreboard players operation @s temp -= @s temp2