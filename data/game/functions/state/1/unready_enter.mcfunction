# 未准备玩家
tellraw @s ["\n",{"selector":"@s"},{"text": " » ","color": "gray","bold": true},{"translate":"ms.join.spec","fallback":"旁观游戏","color": "gray"},"\n"]

# 赋予状态
effect clear @s

# 改变模式
gamemode spectator @s

# 传送玩家
tp @s 0 1000 0
title @s title {"translate":"ms.title.spec.wait","fallback": "等待游戏开始"}