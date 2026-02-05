scoreboard players add @s[scores={tick.relic=..-1}] tick.relic 100

execute as @s[scores={item=1,tick.relic=0..}] run function main:lib/ability/item/01f
tag @s[scores={item=7,tick.relic=0..}] remove item_on