execute if score $1_process tick.general matches 1320..1439 run bossbar set midsoul:1 players @a[team=!spectator]
execute if score $1_process tick.general matches 1040..1239 run bossbar set midsoul:1 players @a[tag=game_player]
execute if score $1_process tick.general matches ..980 run bossbar set midsoul:2 players @a[team=soul]
execute if score $1_process tick.general matches ..980 run bossbar set midsoul:3 players @a[team=guardian]

bossbar set midsoul:info players @a[team=spectator]