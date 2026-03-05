# 根据给定值调整当刻能力冷却
scoreboard players operation @s temp2 = $cooldown_speed setting
$scoreboard players set $percent temp $(value)
scoreboard players operation @s temp2 *= $percent temp
scoreboard players operation @s temp2 /= #100 data

scoreboard players operation @s temp += @s temp2