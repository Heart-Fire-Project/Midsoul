execute if score $gamelock data matches 1 run scoreboard players set $start countdown 11
execute if score $prepare data matches 5.. unless score $start countdown matches 0 run scoreboard players remove $start countdown 1
execute if score $start countdown matches 1..3 run playsound minecraft:entity.arrow.hit_player player @a 0 1000000 0 1000000
execute if score $start countdown matches 0 run playsound minecraft:entity.arrow.hit_player player @a 0 1000000 0 1000000 0.5
execute if score $start countdown matches 0 run function game:state/1/enter