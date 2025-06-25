scoreboard players operation @s[scores={tick.skill=0..}] temp = $cooldown_speed setting
execute if score $state data matches 4 run scoreboard players operation @s[scores={tick.skill=0..}] temp += $cooldown_speed setting
execute if score $echo data matches 4 run scoreboard players set @s temp 0
scoreboard players operation @s[scores={tick.skill=0..}] tick.skill -= @s temp
scoreboard players set @s[scores={tick.skill=..0}] tick.skill 0

# 教程
advancement grant @s[scores={tick.skill=0}] only main:tutorial/mechanism/2

execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{"id":71001}}}]},scores={tick.skill=0}] run function main:state/3/ability/skill/001
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{"id":71002}}}]},scores={tick.skill=0}] run function main:state/3/ability/skill/002
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{"id":71003}}}]},scores={tick.skill=0}] run function main:state/3/ability/skill/003
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{"id":71004}}}]},scores={tick.skill=0}] run function main:state/3/ability/skill/004
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{"id":71005}}}]},scores={tick.skill=0}] run function main:state/3/ability/skill/005
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{"id":71101}}}]},scores={tick.skill=0}] run function main:state/3/ability/skill/101
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{"id":71102}}}]},scores={tick.skill=0}] run function main:state/3/ability/skill/102
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{"id":71103}}}]},scores={tick.skill=0}] run function main:state/3/ability/skill/103
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{"id":71104}}}]},scores={tick.skill=0}] run function main:state/3/ability/skill/104
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{"id":71105}}}]},scores={tick.skill=0}] run function main:state/3/ability/skill/105