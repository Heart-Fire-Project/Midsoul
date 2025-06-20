# 无特效，直接进行计算
# 实际上会舍弃小数点后的部分，所以正常游戏只会有 +0% +10% +20%
scoreboard players operation @s temp2 = $interact_speed setting
scoreboard players operation @s temp2 *= $talent_007 data
scoreboard players operation @s temp2 /= #100 data

scoreboard players operation @s temp += @s temp2