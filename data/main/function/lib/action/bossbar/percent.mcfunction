# 根据给定值调整侦测范围 | 参数 type 可选 heed / warn / both | 参数 phase 可选 direct / final
scoreboard players reset $heed temp
scoreboard players reset $warn temp
scoreboard players reset $both temp
$scoreboard players set $$(type) temp 1
execute if score $both temp matches 1 run scoreboard players set $heed temp 1
execute if score $both temp matches 1 run scoreboard players set $warn temp 1

scoreboard players reset $direct temp
scoreboard players reset $final temp
$scoreboard players set $$(phase) temp 1

execute if score $direct temp matches 1 run scoreboard players operation $valueA temp = $heed temp2
execute if score $direct temp matches 1 run scoreboard players operation $valueB temp = $warn temp2
execute if score $final temp matches 1 run scoreboard players operation $valueA temp = @s temp
execute if score $final temp matches 1 run scoreboard players operation $valueB temp = @s temp2
$scoreboard players set $percent temp $(value)

execute if score $heed temp matches 1 run scoreboard players operation $valueA temp *= $percent temp
execute if score $heed temp matches 1 run scoreboard players operation $valueA temp /= #100 data
execute if score $heed temp matches 1 run scoreboard players operation @s temp += $valueA temp

execute if score $warn temp matches 1 run scoreboard players operation $valueB temp *= $percent temp
execute if score $warn temp matches 1 run scoreboard players operation $valueB temp /= #100 data
execute if score $warn temp matches 1 run scoreboard players operation @s temp2 += $valueB temp