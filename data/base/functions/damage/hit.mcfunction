execute if score $state data matches 3 as @s run function game:state/3/player_hit
execute if score $state data matches 4 as @s run function game:state/4/player_hit
advancement revoke @s only base:damage_dealt