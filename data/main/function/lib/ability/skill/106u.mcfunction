# 逐渐红温
particle lava ~ ~ ~ 0.1 0 0.1 1 8 force @a
scoreboard players add @s tick.general 1

data modify entity @s[scores={tick.general=-7}] Glowing set value 1b
execute as @s[scores={tick.general=-7}] on passengers run data modify entity @s Glowing set value 1b
data modify entity @s[scores={tick.general=-5}] Glowing set value 0b
execute as @s[scores={tick.general=-5}] on passengers run data modify entity @s Glowing set value 0b
data modify entity @s[scores={tick.general=-3}] Glowing set value 1b
execute as @s[scores={tick.general=-3}] on passengers run data modify entity @s Glowing set value 1b
data modify entity @s[scores={tick.general=-2}] Glowing set value 0b
execute as @s[scores={tick.general=-2}] on passengers run data modify entity @s Glowing set value 0b
data modify entity @s[scores={tick.general=-1}] Glowing set value 1b
execute as @s[scores={tick.general=-1}] on passengers run data modify entity @s Glowing set value 1b

execute as @s[scores={tick.general=-7}] run data modify entity @s equipment.head.id set value white_concrete_powder
execute as @s[scores={tick.general=-5}] run data modify entity @s equipment.head.id set value red_concrete_powder
execute as @s[scores={tick.general=-3}] run data modify entity @s equipment.head.id set value white_concrete_powder
execute as @s[scores={tick.general=-2}] run data modify entity @s equipment.head.id set value red_concrete_powder
execute as @s[scores={tick.general=-1}] run data modify entity @s equipment.head.id set value white_concrete_powder

execute as @s[scores={tick.general=-7}] run playsound block.note_block.bell player @a ~ ~ ~ 1 2
execute as @s[scores={tick.general=-5}] run playsound block.note_block.bell player @a ~ ~ ~ 1 2
execute as @s[scores={tick.general=-3}] run playsound block.note_block.bell player @a ~ ~ ~ 1 2
execute as @s[scores={tick.general=-2}] run playsound block.note_block.bell player @a ~ ~ ~ 1 2
execute as @s[scores={tick.general=-1}] run playsound block.note_block.bell player @a ~ ~ ~ 1 2

execute as @s[scores={tick.general=0}] run function main:lib/ability/skill/106b