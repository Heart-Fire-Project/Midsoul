execute unless score $sub_state data matches 1 if score $state data matches 3 as @s run function game:state/3/player_hurt
execute if score $sub_state data matches 1 if score $state data matches 3 as @s run function game:state/4/player_hurt
execute if score $state data matches 4 as @s run function game:state/4/player_hurt
advancement revoke @s only base:damage_taken