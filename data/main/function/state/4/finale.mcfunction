tellraw @a [{text:"» ",color:"#CC81F0",bold:true},{translate:"ms.info.4.finale",fallback:"灵气集聚 ⚜ 守卫者移速再提升；传送门将在灵魂邻近时自动充能（有上限）",bold:false}]
playsound block.sculk_shrieker.shriek player @a 0 1000000 0 120000

execute as @a[team=guardian,scores={state=0}] run attribute @s movement_speed base set 0.16

advancement grant @a[tag=game_player] only main:tutorial/mechanic/3
scoreboard players set $4_finale state 1