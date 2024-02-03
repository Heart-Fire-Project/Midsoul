# Bossbar
execute store result bossbar midsoul:info value run scoreboard players get $2_starting countdown
bossbar set midsoul:info name {"translate":"ms.bossbar.2.wait","fallback":"即将 » %s « 开始","with":[{"score":{"objective":"countdown","name":"$2_starting"}}],"color":"aqua"}

execute if score $2_starting countdown matches 0 run function main:state/3/enter with storage ms:map
execute if score $2_starting countdown matches 1..3 run playsound minecraft:block.dispenser.dispense player @a[team=!admin] 0 1000000 0 1000000
execute if score $2_starting countdown matches 1.. run scoreboard players remove $2_starting countdown 1