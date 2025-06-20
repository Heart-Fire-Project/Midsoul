tellraw @a[team=!admin] [{"text":"» ","color":"#CC81F0","bold":true},{"translate":"ms.info.4.single","fallback":"灵气积聚 ⚜ 传送门将缓慢自动充能","bold":false}]
playsound block.sculk_shrieker.shriek player @a[team=!admin] 0 1000000 0 1000000
advancement grant @a[tag=game_player] only main:tutorial/mechanism/3
scoreboard players set $4_single state 1