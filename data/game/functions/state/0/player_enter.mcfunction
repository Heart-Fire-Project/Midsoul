# 数值重置
attribute @s generic.max_health base set 20
attribute @s generic.movement_speed base set 0.1

# 经验重置
xp set @s 0 points
xp set @s 0 levels

# 赋予状态
effect clear @s
effect give @s saturation infinite 0 true
effect give @s instant_health 1 10 true
effect give @s resistance infinite 4 true
effect give @s weakness infinite 4 true
effect give @s regeneration infinite 4 true

# 改变模式
gamemode adventure @s[team=!admin]

# 传送玩家
tp @s[team=!admin] -55 270 7 135 0

# 重置队伍
team join unready @s