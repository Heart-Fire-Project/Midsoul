# 获取玩家位置
# 前置条件：以要获取位置的玩家为执行者
# 输出结果：r7s:base{x/y/z}

data modify storage r7s:base x set from entity @s Pos[0]
data modify storage r7s:base y set from entity @s Pos[1]
data modify storage r7s:base z set from entity @s Pos[2]