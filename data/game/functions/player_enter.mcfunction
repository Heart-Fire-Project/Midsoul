scoreboard players set @s leave_game 0
team join unready @s

# 按照逻辑重设 Bossbar
execute if score $state data matches 0 run bossbar set midsoul:info players @a
execute if score $state data matches 1 run bossbar set midsoul:info players @a[team=unready]
execute if score $state data matches 2 run bossbar set midsoul:info players @a[team=!admin]
execute if score $state data matches 4 run bossbar set midsoul:info players @a[team=!admin]
execute if score $state data matches 5 run bossbar set midsoul:info players

# 按照逻辑传送
execute if score $state data matches 0 run tp @s 3 257 3 135 0
execute if score $state data matches 1 run tp @s 0 1000 0
execute if score $state data matches 2..5 run tp @s @a[limit=1,team=protect]

# 调整模式
execute if score $state data matches 0 run gamemode adventure @s
execute if score $state data matches 1..5 run gamemode spectator @s

execute if score $state data matches 2..5 run tellraw @s [{"text": " » ","bold": true},{"translate":"ms.info.enter","fallback": "游戏正在进行中, 等一会就可以啦!","bold": false}]