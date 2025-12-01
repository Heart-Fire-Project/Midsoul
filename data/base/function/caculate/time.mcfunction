# 基于游戏刻的时间计算
# 需要参数：unit(最大单位)[sec/min/hrs/day] tick source (计分板记录值)
# 输出结果：$day $hrs $min ← 可选输出 | 必定输出 → $sec $tick $ms

scoreboard players set #min temp 0
scoreboard players set #hrs temp 0
scoreboard players set #day temp 0
$scoreboard players set #$(unit) temp 1
execute if score #day temp matches 1 run scoreboard players set #hrs temp 1
execute if score #hrs temp matches 1 run scoreboard players set #min temp 1
$scoreboard players operation $tick temp2 = $(tick) $(source)
scoreboard players operation $sec temp2 = $tick temp2
scoreboard players operation $sec temp2 /= #20 data
scoreboard players operation $tick temp2 %= #20 data
scoreboard players operation $ms temp2 = $tick temp2
scoreboard players operation $ms temp2 *= #5 data
execute if score #min temp matches 1 run scoreboard players operation $min temp2 = $sec temp2
execute if score #min temp matches 1 run scoreboard players operation $min temp2 /= #60 data
execute if score #min temp matches 1 run scoreboard players operation $sec temp2 %= #60 data
execute if score #hrs temp matches 1 run scoreboard players operation $hrs temp2 = $min temp2
execute if score #hrs temp matches 1 run scoreboard players operation $hrs temp2 /= #60 data
execute if score #hrs temp matches 1 run scoreboard players operation $min temp2 %= #60 data
execute if score #day temp matches 1 run scoreboard players operation $day temp2 = $hrs temp2
execute if score #day temp matches 1 run scoreboard players operation $day temp2 /= #24 data
execute if score #day temp matches 1 run scoreboard players operation $hrs temp2 %= #24 data