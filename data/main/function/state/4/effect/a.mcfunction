# 消除技能效果是刻意的游戏设计
execute as @a[team=soul,scores={state=0}] run attribute @s movement_speed base set 0.10
execute as @a[team=guardian,scores={state=0}] run attribute @s movement_speed base set 0.14

attribute @s[scores={talent_1=5},team=soul] sneaking_speed base set 0.6
attribute @s[scores={talent_2=5},team=soul] sneaking_speed base set 0.6

execute if score $echo data matches 1 run effect give @s[tag=echo_target] glowing infinite 0 true
execute if score $echo data matches 5 as @a[team=soul,scores={state=0}] run attribute @s movement_speed base set 0.11
execute if score $echo data matches 5 as @a[team=!soul] run attribute @s scale base set 1.0
execute if score $echo data matches 5 as @a[team=soul] run attribute @s scale base set 0.7
execute if score $echo data matches 6 as @a[team=soul,scores={state=0}] run attribute @s movement_speed base set 0.175
execute if score $echo data matches 6 as @a[team=guardian,scores={state=0}] run attribute @s movement_speed base set 0.21