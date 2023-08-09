execute if score $real_start countdown matches 0..13 run scoreboard players remove $real_start countdown 1
execute if score $real_start countdown matches ..-1 run scoreboard players reset $real_start countdown

execute if score $real_start countdown matches 12 run bossbar set midsoul:info color blue
execute if score $real_start countdown matches 12 run bossbar set midsoul:info style notched_12
execute if score $real_start countdown matches 12 run bossbar set midsoul:info max 12
execute if score $real_start countdown matches 12 run bossbar set midsoul:info players @a[team=!admin]

execute if score $real_start countdown matches 12 run title @a title ""
execute if score $real_start countdown matches 12 run title @a[team=!admin] subtitle {"translate":"ms.title.ready","fallback": "▣ 游戏即将开始 ▣","color": "aqua"}
execute if score $real_start countdown matches 1..5 run playsound minecraft:block.dispenser.dispense player @a 0 1000000 0 1000000

execute store result bossbar midsoul:info value run scoreboard players get $real_start countdown
bossbar set midsoul:info name {"translate":"ms.bossbar.2.wait","fallback":"即将 » %s « 开始","with":[{"score":{"objective":"countdown","name":"$real_start"}}],"color": "aqua"} 

execute unless score $real_start countdown matches 0..13 run function game:state/3/enter