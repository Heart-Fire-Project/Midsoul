advancement revoke @s only main:detect/damage_dealt

execute if data storage ms:mode {logic:"1"} as @s[team=guardian] run function main:state/3/player/guardian/hit