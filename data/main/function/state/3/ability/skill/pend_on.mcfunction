scoreboard players operation @s[scores={skill_tick=0..}] skill_tick -= $cooldown_speed setting
execute if score $echo data matches 4 run scoreboard players operation @s[scores={skill_tick=0..}] skill_tick += $cooldown_speed setting
scoreboard players set @s[scores={skill_tick=..0}] skill_tick 0

# 教程
advancement grant @s[scores={skill_tick=0}] only main:tutorial/mechanism/2

execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{"id":71001}}}]},scores={skill_tick=0}] run function main:state/3/ability/skill/001
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{"id":71002}}}]},scores={skill_tick=0}] run function main:state/3/ability/skill/002
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{"id":71003}}}]},scores={skill_tick=0}] run function main:state/3/ability/skill/003
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{"id":71004}}}]},scores={skill_tick=0}] run function main:state/3/ability/skill/004
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{"id":71005}}}]},scores={skill_tick=0}] run function main:state/3/ability/skill/005
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{"id":71101}}}]},scores={skill_tick=0}] run function main:state/3/ability/skill/101
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{"id":71102}}}]},scores={skill_tick=0}] run function main:state/3/ability/skill/102
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{"id":71103}}}]},scores={skill_tick=0}] run function main:state/3/ability/skill/103
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{"id":71104}}}]},scores={skill_tick=0}] run function main:state/3/ability/skill/104
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{"id":71105}}}]},scores={skill_tick=0}] run function main:state/3/ability/skill/105