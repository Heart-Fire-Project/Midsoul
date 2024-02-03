# 计算最高分玩家
tag @a remove winner
scoreboard players set #max exp_temp 0
execute as @a run scoreboard players operation #max exp_temp > @s exp_temp
execute as @a run execute if score @s exp_temp = #max exp_temp run tag @s add winner

# 玩家经验计算
execute as @a[team=protect] run function main:state/5/caculate/1/protect
execute as @a[team=dead] run function main:state/5/caculate/1/soul
execute as @a[team=finish] run function main:state/5/caculate/1/soul
scoreboard players reset @a[team=unready] exp_temp

# 无法获取经验值判定
execute if score $mode temp matches 2 run scoreboard players reset @a exp_temp

# 清除标签
tag @a remove game_player