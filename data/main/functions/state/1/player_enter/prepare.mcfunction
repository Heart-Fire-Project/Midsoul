# 已准备玩家
tellraw @s ["\n",{"text":" » ","color":"aqua","bold":true},{"translate":"ms.starting.play","fallback":"你将参与本场游戏","color":"aqua"},"\n"]

# 赋予状态
effect clear @s
effect give @s darkness infinite 0 true

# 改变模式
gamemode spectator @s

# 加一个tag
tag @s add game_player