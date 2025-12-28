advancement revoke @s only main:detect/damage_taken

execute if data storage ms:mode {logic:"1"} as @s[team=soul] run function main:state/3/player/soul/hurt