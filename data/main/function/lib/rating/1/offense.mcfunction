execute if score $state data matches 3 run tellraw @s [{text:" +160 | ",color:"#CC4433"},{translate:"ms.rating.offense.a",fallback:"门扉未起"}]
execute if score $state data matches 4 unless entity @e[tag=open_purple] run tellraw @s [{text:" +120 | ",color:"#CC4433"},{translate:"ms.rating.offense.b",fallback:"遥遥无期"}]
execute if entity @e[tag=open_purple] run function base:caculate/time {unit:"sec",tick:"$4_portal",source:"tick.general"}
execute if entity @e[tag=open_purple] run scoreboard players add $sec temp2 1
execute if entity @e[tag=open_purple] if score $sec temp2 matches 121.. run scoreboard players set $sec temp2 120
execute if entity @e[tag=open_purple] run tellraw @s [{text:" +",color:"#CC4433"},{score:{name:"$sec",objective:"temp2"}}," | ",{translate:"ms.rating.offense.c",fallback:"极限追逃"}]