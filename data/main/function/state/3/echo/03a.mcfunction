# 计算降低的冷却速率
scoreboard players operation @s temp2 = $cooldown_speed setting
scoreboard players operation @s temp2 /= #2 data
scoreboard players operation @s temp -= @s temp2