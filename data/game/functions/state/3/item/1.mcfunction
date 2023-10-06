title @s actionbar [{"translate":"ms.item.active","fallback":"宝物触发","color": "aqua"}," » ",{"translate":"ms.item.1","fallback":"无懈可击"}]
scoreboard players add @s stat_temp_item 1

playsound minecraft:block.anvil.place player @a
particle minecraft:enchant ~ ~1 ~ 0.1 0.05 0.1 3 100 force @a
effect give @s resistance 1 4

scoreboard players set @s item -1
function game:state/3/refresh_inventory
item replace entity @s weapon.offhand with air