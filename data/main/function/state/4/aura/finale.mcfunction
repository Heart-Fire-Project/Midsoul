tellraw @a[team=!admin] [{"text":"» ","color":"#9566a9","bold":true},{"translate":"ms.info.4.finale","fallback":"灵气爆发 ⚜ 灵魂靠近传送门时，传送门将极速充能","bold":false}]
playsound block.bell.use player @a[team=!admin] 0 1000000 0 1000000
advancement grant @a[tag=game_player] only main:tutorial/mechanism/3
scoreboard players set $4_finale state 1