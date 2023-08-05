execute if score $collect_speed data matches 0 run scoreboard players set $collect_speed data 7777767
execute if score $collect_speed data matches 2..20 run scoreboard players remove $collect_speed data 2
execute if score $collect_speed data matches 25..50 run scoreboard players remove $collect_speed data 5
execute if score $collect_speed data matches 60..100 run scoreboard players remove $collect_speed data 10
execute if score $collect_speed data matches 7777777 run scoreboard players set $collect_speed data 100
execute if score $collect_speed data matches 7777767 run scoreboard players add $collect_speed data 10
function debug:panel