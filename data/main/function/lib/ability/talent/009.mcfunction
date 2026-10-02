# 特效
playsound block.lantern.place player @a ~ ~ ~ 0.5 0.8
particle wax_off ~ ~0.2 ~ 0.2 0.3 0.2 1 12 force @a

# 标签
tag @s[scores={talent_1=9}] add talent_1_on
tag @s[scores={talent_2=9}] add talent_2_on

# 直接增加 1.5 秒进度
scoreboard players operation $value temp = $interact_speed setting
scoreboard players operation $value temp *= #30 data
scoreboard players operation @s tick.general += $value temp

# 属性加成
attribute @s knockback_resistance modifier add ms:t009 0.75 add_value