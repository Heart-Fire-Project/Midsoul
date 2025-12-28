# 权重计算 | 记录玩家边界值
# 如果 state 的值不是 0，则进行权重修改
scoreboard players set @s temp 7
scoreboard players add @s[scores={state=2}] temp 90000
scoreboard players operation @s temp += @s soul_combo
scoreboard players set @s[scores={state=1}] temp 0
scoreboard players operation $total temp2 += @s temp
scoreboard players operation @s temp2 = $total temp2