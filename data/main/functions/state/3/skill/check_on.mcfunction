scoreboard players operation @s[scores={skill_tick=0..},tag=!skill_on] skill_tick -= $cooldown_speed data
execute if score $mode temp matches 2 run scoreboard players operation @s[scores={skill_tick=0..},tag=!skill_on] skill_tick -= $cooldown_speed data
scoreboard players set @s[scores={skill_tick=..0},tag=!skill_on] skill_tick 0

execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:71001}}]},scores={skill_tick=0},tag=!skill_on] run function main:state/3/skill/001
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:71002}}]},scores={skill_tick=0},tag=!skill_on] run function main:state/3/skill/002
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:71003}}]},scores={skill_tick=0},tag=!skill_on] run function main:state/3/skill/003
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:71004}}]},scores={skill_tick=0},tag=!skill_on] run function main:state/3/skill/004
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:71005}}]},scores={skill_tick=0},tag=!skill_on] run function main:state/3/skill/005
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:71101}}]},scores={skill_tick=0},tag=!skill_on] run function main:state/3/skill/101
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:71102}}]},scores={skill_tick=0},tag=!skill_on] run function main:state/3/skill/102
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:71103}}]},scores={skill_tick=0},tag=!skill_on] run function main:state/3/skill/103
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:71104}}]},scores={skill_tick=0},tag=!skill_on] run function main:state/3/skill/104
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:71105}}]},scores={skill_tick=0},tag=!skill_on] run function main:state/3/skill/105