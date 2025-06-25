scoreboard players add @s[scores={tick.item=..-1}] tick.item 10

execute as @s[scores={item=1,tick.item=0..}] run function main:state/3/ability/item/01f
execute as @s[scores={item=7,tick.item=0..}] run tag @s remove item_on