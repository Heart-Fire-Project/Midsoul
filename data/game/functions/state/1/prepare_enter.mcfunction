# 已准备玩家
tellraw @s ["\n",{"selector":"@s"},{"text": " » ","color": "aqua","bold": true}, {"translate":"ms.join.play","fallback":"参与游戏","color": "aqua"},"\n"]

# 赋予状态
effect clear @s
effect give @s darkness infinite 0 true

# 改变模式
gamemode spectator @s

# 传送玩家
tp @s 0 253 0

# 加一个tag
tag @s add game_player