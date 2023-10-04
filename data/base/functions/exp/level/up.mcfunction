function game:state/0/set_exp
scoreboard players operation @s stat_exp -= @s temp2
scoreboard players add @s stat_level 1
playsound minecraft:block.beacon.power_select ambient @a ~ ~ ~ 1 1
particle minecraft:sculk_charge_pop ~ ~0.1 ~ 0.2 0.1 0.2 0.1 200 force @a