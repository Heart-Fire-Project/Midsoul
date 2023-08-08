execute if score $game_start countdown matches 0..13 run scoreboard players remove $game_start countdown 1
execute if score $game_start countdown matches ..-1 run scoreboard players reset $game_start countdown

execute if score $game_start countdown matches 12 run bossbar set midsoul:info color blue
execute if score $game_start countdown matches 12 run bossbar set midsoul:info style notched_12
execute if score $game_start countdown matches 12 run bossbar set midsoul:info max 12
execute if score $game_start countdown matches 12 run bossbar set midsoul:info players @a[team=!admin]

execute store result bossbar midsoul:info value run scoreboard players get $game_start countdown
bossbar set midsoul:info name {"translate":"ms.bossbar.2.wait","fallback":"即将 » %s « 开始","with":[{"score":{"objective":"countdown","name":"$game_start"}}],"color": "aqua"} 

execute unless score $game_start countdown matches 0..12 run function game:state/3/enter