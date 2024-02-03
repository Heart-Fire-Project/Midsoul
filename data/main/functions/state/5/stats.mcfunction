# 统计数据加总
execute as @a run scoreboard players operation @s stat_total_collect += @s stat_temp_collect
execute as @a run scoreboard players operation @s stat_total_heal += @s stat_temp_heal
execute as @a run scoreboard players operation @s stat_total_dying += @s stat_temp_dying
execute as @a run scoreboard players operation @s stat_total_open += @s stat_temp_open
execute as @a run scoreboard players operation @s stat_total_hit += @s stat_temp_hit
execute as @a run scoreboard players operation @s stat_total_down += @s stat_temp_down
execute as @a run scoreboard players operation @s stat_total_skill += @s stat_temp_skill
execute as @a run scoreboard players operation @s stat_total_talent += @s stat_temp_talent
execute as @a run scoreboard players operation @s stat_total_item += @s stat_temp_item
execute as @a run scoreboard players operation @s stat_play_time += @s stat_temp_play_time

# 玩家经验计算
execute as @a[team=protect] run function main:state/5/caculate/1/protect
execute as @a[team=dead] run function main:state/5/caculate/1/soul
execute as @a[team=finish] run function main:state/5/caculate/1/soul
scoreboard players reset @a[team=unready] exp_temp

# 清除标签
tag @s remove game_player

# 计算最高分玩家
tag @a remove winner
scoreboard players set #max exp_temp 0
execute as @a run scoreboard players operation #max exp_temp > @s exp_temp
execute as @a run execute if score @s exp_temp = #max exp_temp run tag @s add winner