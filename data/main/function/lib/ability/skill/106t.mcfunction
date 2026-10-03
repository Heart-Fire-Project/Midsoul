# 侦测是否被触发
execute as @a[team=soul,scores={state=0},distance=..3] store result score @s temp run data get entity @s Pos[1] 1000
execute store result score $min temp run data get entity @s Pos[1] 1000
scoreboard players operation $max temp = $min temp
scoreboard players add $max temp 2000
scoreboard players set $value temp -100000
scoreboard players operation $value temp > @a[team=soul,scores={state=0},distance=..2] temp
execute if score $value temp >= $min temp if score $value temp <= $max temp run function main:lib/ability/skill/106a