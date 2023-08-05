execute if score $collect_speed data matches 100 run scoreboard players set $collect_speed data 7777767
execute if score $collect_speed data matches 50..90 run scoreboard players add $collect_speed data 10
execute if score $collect_speed data matches 20..45 run scoreboard players add $collect_speed data 5
execute if score $collect_speed data matches 0..18 run scoreboard players add $collect_speed data 2
execute if score $collect_speed data matches 7777777 run scoreboard players set $collect_speed data 0
execute if score $collect_speed data matches 7777767 run scoreboard players add $collect_speed data 10
function debug:panel