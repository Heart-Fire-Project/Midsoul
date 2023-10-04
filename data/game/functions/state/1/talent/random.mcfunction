# 随机一个技能, 天赋相同再刷一次就完事了
scoreboard players set $random_min data 1
scoreboard players set $random_max data 4
function base:random
execute store result score @s skill run scoreboard players get $random data

# 随机第一个天赋
scoreboard players set $random_min data 1
scoreboard players set $random_max data 4
function base:random
execute store result score @s talent_1 run scoreboard players get $random data

# 随机第二个天赋
scoreboard players set $random_min data 1
scoreboard players set $random_max data 4
function base:random
execute store result score @s talent_2 run scoreboard players get $random data

# 如果天赋相同, 那就重跑一次
execute if score @s talent_1 = @s talent_2 run function game:state/1/talent/random

# 特别注意的是, 当前版本中 灵魂守卫者 与 灵魂 的技能与天赋数量一致, 若不一致可能需要特殊处理, 例如取余数
# execute if entity @s[team=protect] run scoreboard players set @s temp 2
# execute if entity @s[team=protect] run scoreboard players operation @s talent_1 %= @s temp