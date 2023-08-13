scoreboard players set $random_min data 1
scoreboard players set $random_max data 3
function base:random
execute if score $random data matches 1 as @s run tellraw @a[team=!admin] [{"text": " » ","color": "red","bold": true},{"selector":"@s","bold": false},{"translate":"ms.info.dead.1","fallback": " 迎来了最终死亡"}]
execute if score $random data matches 2 as @s run tellraw @a[team=!admin] [{"text": " » ","color": "red","bold": true},{"selector":"@s","bold": false},{"translate":"ms.info.dead.2","fallback": " 沉湎于复活幻象"}]
execute if score $random data matches 3 as @s run tellraw @a[team=!admin] [{"text": " » ","color": "red","bold": true},{"selector":"@s","bold": false},{"translate":"ms.info.dead.3","fallback": " 又一次与世长别"}]
execute at @s run particle sculk_soul ~ ~0.1 ~ 0.2 0.1 0.2 0.3 512 force @a
team join dead @s
gamemode spectator @s
execute as @a[team=!admin] run playsound entity.wither.hurt player @s 0 1000000 0 1000000 0.7
effect clear @s
kill @e[tag=gold,limit=1,sort=random]