# 根据给定值调整侦测范围 | 参数 type 可选 heed / warn / both
scoreboard players reset $heed temp
scoreboard players reset $warn temp
scoreboard players reset $both temp
$scoreboard players set $$(type) temp 1
execute if score $both temp matches 1 run scoreboard players set $heed temp 1
execute if score $both temp matches 1 run scoreboard players set $warn temp 1

$scoreboard players set $value temp $(value)

execute if score $heed temp matches 1 run scoreboard players operation @s temp += $value temp
execute if score $warn temp matches 1 run scoreboard players operation @s temp2 += $value temp