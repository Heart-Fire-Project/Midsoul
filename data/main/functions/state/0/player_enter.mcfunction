# 数值重置
attribute @s generic.max_health base set 20
attribute @s generic.movement_speed base set 0.1

# 赋予状态
effect clear @s
effect give @s saturation infinite 0 true
effect give @s instant_health 1 10 true
effect give @s resistance infinite 4 true
effect give @s weakness infinite 4 true
effect give @s regeneration infinite 4 true

# 重置计分板
scoreboard players enable @s interact_check
scoreboard players set @s countdown 0
function main:state/0/exp/process

gamemode adventure @s[team=!admin]
tp @s[team=!admin] 0 240 0 -45 0
team join spectator @s