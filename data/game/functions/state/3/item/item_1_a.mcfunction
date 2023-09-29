title @s actionbar [{"translate":"ms.item.active","fallback":"宝物触发","color": "aqua"}," » ",{"translate":"ms.item.1","fallback":"无懈可击"}]

playsound minecraft:block.anvil.place player @a
particle minecraft:enchant ~ ~1 ~ 0.1 0.05 0.1 3 100 force @a
tag @s add item_1_active
effect give @s[tag=item_1_active] resistance infinite 5
schedule function game:state/3/item/item_1_b 16t replace

scoreboard players set @s item -1
function game:state/3/refresh_inventory
item replace entity @s weapon.offhand with air