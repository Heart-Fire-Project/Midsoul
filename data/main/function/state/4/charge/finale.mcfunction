# 闪电快充速度结算
scoreboard players operation $plus temp = $interact_speed setting
scoreboard players operation $plus temp *= #5 data
scoreboard players operation @s tick.general += $plus temp

# 特效
effect give @a[team=soul,distance=..3,scores={state=0}] glowing 1
playsound block.sculk.spread player @a 0 1000000 0 120000
particle sculk_soul ~ ~0.3 ~ 1 1 1 0.01 6 force @a