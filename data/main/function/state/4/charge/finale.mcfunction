# 充能速度结算
scoreboard players operation $plus temp = $interact_speed setting
scoreboard players operation $plus temp *= #5 data
scoreboard players operation @s tick.global += $plus temp

# 特效
effect give @a[team=soul,distance=..3,scores={state=0}] glowing 1
playsound block.sculk.spread player @a[team=!admin] 0 1000000 0 1000000
particle sculk_soul ~ ~0.3 ~ 1 1 1 0.01 6 force @a[team=!admin]