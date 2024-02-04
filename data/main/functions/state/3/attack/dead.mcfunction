# 语文家庭作业
function base:random {storage:"data",max:"5",min:"1"}
execute if score $random data matches 1 as @s run tellraw @a[team=!admin] [{"text":" » ","color":"red","bold":true},{"selector":"@s","bold":false},{"translate":"ms.info.dead.1","fallback":" 化作尘烟，却无法重塑"},"\n"]
execute if score $random data matches 2 as @s run tellraw @a[team=!admin] [{"text":" » ","color":"red","bold":true},{"selector":"@s","bold":false},{"translate":"ms.info.dead.2","fallback":" 沉湎幻象，无以达终点"},"\n"]
execute if score $random data matches 3 as @s run tellraw @a[team=!admin] [{"text":" » ","color":"red","bold":true},{"selector":"@s","bold":false},{"translate":"ms.info.dead.3","fallback":" 深度睡眠，且永不苏醒"},"\n"]
execute if score $random data matches 4 as @s run tellraw @a[team=!admin] [{"text":" » ","color":"red","bold":true},{"selector":"@s","bold":false},{"translate":"ms.info.dead.4","fallback":" 魂魄消散，已万劫不复"},"\n"]
execute if score $random data matches 5 as @s run tellraw @a[team=!admin] [{"text":" » ","color":"red","bold":true},{"selector":"@s","bold":false},{"translate":"ms.info.dead.5","fallback":" 再无躯壳，也再无复活"},"\n"]

execute at @s run particle sculk_soul ~ ~0.1 ~ 0.2 0.1 0.2 0.3 512 force @a
team join dead @s
gamemode spectator @s
execute as @a[team=!admin] run playsound entity.wither.hurt player @s 0 1000000 0 1000000 0.7
effect clear @s
kill @e[tag=gold,limit=1,sort=random]

scoreboard players add @a[team=protect] stat_kill 1
scoreboard players add @s stat_dead 1