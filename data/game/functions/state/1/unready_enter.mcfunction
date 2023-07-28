# 未准备玩家
tellraw @s ["\n",{"selector":"@s"},{"text": " » ","color": "gray","bold": true}, {"text": "旁观游戏\n","color": "gray"}]

# 赋予状态
effect clear @s

# 改变模式
gamemode spectator @s

# 传送玩家
tp @s 25 94 -42
title @s title "等待游戏开始"