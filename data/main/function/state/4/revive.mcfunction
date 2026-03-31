# 还是受文本套组影响
execute unless score @s extra.text matches 1..3 run function main:lib/player/revive/0
execute if score @s extra.text matches 1 run function main:lib/player/revive/1
execute if score @s extra.text matches 2 run function main:lib/player/revive/2
execute if score @s extra.text matches 3 run function main:lib/player/revive/3

# 由于队伍会使信息内玩家名变色，后置处理
execute at @s run particle firework ~ ~0.4 ~ 0.2 0.1 0.2 0.5 256 force @a
team join revive @s
gamemode spectator @s
tag @s remove echo_target
playsound block.respawn_anchor.set_spawn player @a 0 1000000 0 120000 0.7
effect clear @s

# 恢复玩家属性
function main:lib/action/reset_attribute

# 统计数据
scoreboard players add @s stat.revive 1
scoreboard players add $soul_revive data 1

# 实时表现分
execute as @s[scores={setting.instant_rating=1}] run function main:lib/rating/1/soul/revive