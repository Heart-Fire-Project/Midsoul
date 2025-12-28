# 结束擦刀
scoreboard players set @s state 0
tag @s remove hit_soul
function main:state/3/player/effect

# 判定：擦刀状态结束时
function main:lib/action/player/recover