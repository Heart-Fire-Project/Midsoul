advancement revoke @s only main:detect/damage_taken

execute if score $state data matches 3..4 as @s[team=soul] run function main:state/3/player/soul/hurt