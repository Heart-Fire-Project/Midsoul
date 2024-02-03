scoreboard players add @s[scores={item_tick=..-1},tag=item_on] item_tick 1

execute as @s[scores={item=1,item_tick=0},tag=item_on] run function main:state/3/item/1s
execute at @e[tag=I5] positioned ^ ^1 ^2 run effect give @a[team=protect,distance=..3] slowness 1 2
execute as @s[scores={item=6,item_tick=0},tag=item_on] run function main:state/3/item/6s
execute as @s[scores={item=6,item_tick=..-1},tag=item_on] at @a[team=protect] run particle cloud ~ ~ ~ 0.3 0 0.3 0.1 20 force @a