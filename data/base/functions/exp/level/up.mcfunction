# 临时特效, 可能也就这样了
scoreboard players operation @s stat_exp -= @s max_exp
scoreboard players add @s stat_level 1
playsound minecraft:block.beacon.power_select ambient @a ~ ~ ~ 1 1
particle minecraft:sculk_charge_pop ~ ~0.1 ~ 0.2 0.1 0.2 0.1 200 force @a