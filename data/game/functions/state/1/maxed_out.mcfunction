# 被赶出来的玩家
tellraw @s ["\n",{"selector":"@s"},{"text": " » ","color": "gray","bold": true}, {"translate":"ms.join.miss","fallback":"未被选中","color": "gray"},"\n"]

# 赋予状态
effect clear @s

# 改变模式
gamemode spectator @s

# 传送玩家
tp @s 25 94 -42
title @s title "等待游戏开始"

# 把自己也扔到旁观者去
team join unready @s