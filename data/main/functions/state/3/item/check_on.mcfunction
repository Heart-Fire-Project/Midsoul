scoreboard players set @a[tag=!item_on] item_tick 0

execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:73001}}]},scores={item_tick=0}] run function main:state/3/item/1
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:73002}}]},scores={item_tick=0}] run function main:state/3/item/2
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:73003}}]},scores={item_tick=0,skill_tick=1..}] run function main:state/3/item/3
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:73004}}]},scores={item_tick=0}] run function main:state/3/item/4
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:73005}}]},scores={item_tick=0}] run function main:state/3/item/5
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:73006}}]},scores={item_tick=0}] run function main:state/3/item/6