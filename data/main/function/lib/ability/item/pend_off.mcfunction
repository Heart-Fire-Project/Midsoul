scoreboard players add @s[scores={tick.item=..-1}] tick.item 100

execute as @s[scores={item=1,tick.item=0..}] run function main:lib/ability/item/01f
tag @s[scores={item=7,tick.item=0..}] remove item_on