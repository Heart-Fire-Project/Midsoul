execute if score $state data matches 3 run tellraw @s [{text:" +240 | ",color:"#CC4433"},{translate:"ms.rating.offense.s",fallback:"门扉未起"}]
execute if score $state data matches 4 unless entity @e[tag=open_purple] run tellraw @s [{text:" +180 | ",color:"#CC4433"},{translate:"ms.rating.offense.a",fallback:"遥遥无期"}]
execute if entity @e[tag=open_purple] run function base:caculate/time {unit:"sec",tick:"$4_portal",source:"tick.general"}
execute if entity @e[tag=open_purple] run scoreboard players add $sec temp2 1
execute if entity @e[tag=open_purple] if score $sec temp2 matches 161.. run scoreboard players set $sec temp2 160
scoreboard players operation $value temp = $soul_revive data
scoreboard players operation $value temp *= #1000 data
scoreboard players operation $value temp /= $soul_count data
scoreboard players operation $value temp *= $sec temp2
scoreboard players operation $value temp /= #1000 data
scoreboard players operation $sec temp2 -= $value temp
execute if entity @e[tag=open_purple] run tellraw @s [{text:" +",color:"#CC4433"},{score:{name:"$sec",objective:"temp2"}}," | ",{translate:"ms.rating.offense.b",fallback:"极限追逃"}]