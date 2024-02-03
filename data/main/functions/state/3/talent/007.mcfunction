# 计算单次增加的进度
# 实际上会舍弃小数点后的部分，所以正常游戏只会有 +0% +10% +20%
scoreboard players operation @s cacu = $collect_speed data
scoreboard players operation @s cacu *= $talent_007 temp
scoreboard players operation @s cacu /= #100 data

execute if score @s cacu matches 0.. run scoreboard players operation @s countdown += @s cacu