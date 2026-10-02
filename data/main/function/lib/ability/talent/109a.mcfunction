# 能够触发
scoreboard players operation $minus temp *= #5 data
scoreboard players operation $minus temp /= #2 data
playsound block.sculk_shrieker.step player @a ~ ~ ~ 0.75 1.2
particle instant_effect{color:20281} ~ ~ ~ 0.3 0 0.3 0.5 4
tag @a[team=guardian,scores={talent_1=9},distance=..3] add talent_1_on
tag @a[team=guardian,scores={talent_2=9},distance=..3] add talent_2_on
tag @s add T109a