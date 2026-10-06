# 检查是否可触发
tag @s remove T109a
scoreboard players reset $pending temp
scoreboard players reset $lock temp
execute as @s[scores={tick.interact=..0,state=0}] run scoreboard players set $lock temp 1
execute as @s[scores={tick.interact=..30000,state=1}] run scoreboard players set $lock temp 1
execute as @s[scores={tick.interact=..60000,state=2}] run scoreboard players set $lock temp 1
execute unless score $lock temp matches 1 unless score $num temp matches 1.. if entity @p[team=guardian,scores={talent_1=9},distance=..3] run scoreboard players set $pending temp 1
execute unless score $lock temp matches 1 unless score $num temp matches 1.. if entity @p[team=guardian,scores={talent_2=9},distance=..3] run scoreboard players set $pending temp 1

# 若能够触发……
execute if score $pending temp matches 1 run function main:lib/ability/talent/109a

# 遍历检查的部分
tag @s add T109
execute unless entity @e[tag=purple,tag=!open_purple,tag=!T109] as @a[team=guardian,scores={talent_1=9}] unless entity @e[tag=T109a,distance=..3] run tag @s remove talent_1_on
execute unless entity @e[tag=purple,tag=!open_purple,tag=!T109] as @a[team=guardian,scores={talent_2=9}] unless entity @e[tag=T109a,distance=..3] run tag @s remove talent_2_on
execute unless entity @e[tag=purple,tag=!open_purple,tag=!T109] run tag @e remove T109