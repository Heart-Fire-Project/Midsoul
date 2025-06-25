advancement revoke @s only main:detect/damage_dealt

execute if score $state data matches 3..4 as @s[team=guardian] run function main:state/3/player/hit