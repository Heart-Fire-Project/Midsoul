tellraw @a[team=!admin] [{"text": " » ","color": "green","bold": true},{"selector":"@s","bold": false},{"translate":"ms.info.finish","fallback": " 成功复活"}]
particle firework ~ ~0.4 ~ 0.2 0.1 0.2 0.5 256 force @a
team join finish @s
gamemode spectator @s
playsound block.respawn_anchor.set_spawn player @a[team=!admin] 0 1000000 0 1000000 0.7
# effect give @a[team=protect] speed 3 4
effect clear @s