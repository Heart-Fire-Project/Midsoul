# 消除技能效果是刻意的游戏设计
execute as @a[team=soul,scores={state=0}] run attribute @s movement_speed base set 0.12
execute as @a[team=guardian,scores={state=0}] run attribute @s movement_speed base set 0.16
attribute @s attack_damage base set 0
attribute @s[scores={state=0}] jump_strength base set 0.42

effect clear @s
effect give @s saturation infinite 10 true
effect give @a[team=soul,scores={state=0}] glowing infinite 6 true
effect give @a[team=guardian] resistance infinite 49 true
effect give @s[scores={state=1}] darkness infinite 49 true
effect give @s[scores={state=1}] resistance infinite 49 true
attribute @s[scores={state=1}] movement_speed base set 0
attribute @s[scores={state=1}] jump_strength base set 0
execute if score $two_guardian state matches 1 run effect give @a[team=soul] resistance infinite 0 true

execute if score $echo data matches 5 as @a[team=soul,scores={state=0}] run attribute @s movement_speed base set 0.132
execute if score $echo data matches 5 as @a[team=!soul] run attribute @s scale base set 1.0
execute if score $echo data matches 5 as @a[team=soul] run attribute @s scale base set 0.7
execute if score $echo data matches 6 as @a[team=soul,scores={state=0}] run attribute @s movement_speed base set 0.24
execute if score $echo data matches 6 as @a[team=guardian,scores={state=0}] run attribute @s movement_speed base set 0.32

# 但回响效果不会重置，再度施加
execute if score $echo data matches 1 run function main:state/3/echo/01a