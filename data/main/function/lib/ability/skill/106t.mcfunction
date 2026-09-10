# 侦测是否被触发
execute as @a[team=soul,scores={state=0},distance=..2] store result score @s temp run data get entity @s Pos[1] 1000
execute store result score $valueA temp run data get entity @s Pos[1] 1000
scoreboard players set $valueB temp -100000
scoreboard players operation $valueB temp > @a[team=soul,scores={state=0},distance=..2] temp
execute if score $valueB temp >= $valueA temp run function main:lib/ability/skill/106a