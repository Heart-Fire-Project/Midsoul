# 计算差值
scoreboard players set $value temp 10
scoreboard players operation $value temp -= $soul_count data
execute if score $value temp matches ..-1 run scoreboard players set $value temp 0

# 计算额外分
scoreboard players operation $valueA temp = @s temp
scoreboard players operation $valueA temp *= $value temp
scoreboard players operation $valueA temp /= #10 data

# 应用分数
scoreboard players operation @s temp += $valueA temp