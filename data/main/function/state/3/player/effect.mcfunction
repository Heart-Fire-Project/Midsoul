# 必然效果
effect clear @s
effect give @s saturation infinite 10 true
effect give @a[team=guardian] resistance infinite 49 true
effect give @s[scores={state=1}] darkness infinite 49 true
effect give @s[scores={state=1}] resistance infinite 49 true

attribute @s attack_damage base set 0
attribute @s[scores={state=0}] jump_strength base set 0.42
attribute @s[scores={state=0}] water_movement_efficiency base set 0.0
attribute @s[scores={state=1}] movement_speed base set 0
attribute @s[scores={state=1}] jump_strength base set 0
attribute @s[scores={state=1}] water_movement_efficiency base set 10
execute if score $two_guardian state matches 1 run effect give @a[team=soul] resistance infinite 0 true

# 分流
execute if score $state data matches 99 run attribute @s movement_speed base set 0.12
execute if score $state data matches 4 run function main:state/4/effect/pend
execute if score $state data matches 3 run function main:state/3/effect