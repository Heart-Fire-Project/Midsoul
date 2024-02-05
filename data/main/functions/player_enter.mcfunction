scoreboard players set @s leave_game 0
team join spectator @s
attribute @s generic.movement_speed base set 0.1

# 按照逻辑重设 Bossbar
execute if score $state data matches 0 run bossbar set midsoul:info players @a
execute if score $state data matches 1 run bossbar set midsoul:info players @a[team=spectator]
execute if score $state data matches 2 run bossbar set midsoul:info players @a[team=!admin]
execute if score $state data matches 4 run bossbar set midsoul:info players @a[team=!admin]
execute if score $state data matches 5 run bossbar set midsoul:info players

execute if score $state data matches 0 run function main:state/0/player_enter
execute if score $state data matches 1 run function main:state/1/player_enter/spectator
execute if score $state data matches 2..5 run gamemode spectator @s
execute if score $state data matches 2..5 run tp @s @r[limit=1,tag=game_player]
execute if score $state data matches 2..5 run tellraw @s [{"text":" » ","bold":true},{"translate":"ms.info.enter","fallback":"游戏正在进行中，等一会就可以啦!","bold":false},"\n"]