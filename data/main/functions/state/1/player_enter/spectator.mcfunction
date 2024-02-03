# 未准备玩家
tellraw @s ["\n",{"text":" » ","color":"gray","bold":true},{"translate":"ms.starting.spec","fallback":"你将旁观本场游戏","color":"gray"},"\n"]

# 赋予状态
effect clear @s

# 改变模式
gamemode spectator @s

# 标题提示
title @s title ""
title @s subtitle {"translate":"ms.title.spec.wait","fallback":"等待游戏开始"}