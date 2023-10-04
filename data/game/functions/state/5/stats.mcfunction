# 统计数据
scoreboard players add @a[team=dead] stat_dead 1
scoreboard players add @a[team=finish] stat_finish 1
execute as @a run scoreboard players operation @s stat_total_collect += @s stat_temp_collect
execute as @a run scoreboard players operation @s stat_total_heal += @s stat_temp_heal
execute as @a run scoreboard players operation @s stat_total_open += @s stat_temp_open
execute as @a run scoreboard players operation @s stat_total_hit += @s stat_temp_hit
execute as @a run scoreboard players operation @s stat_total_skill += @s stat_temp_skill
execute as @a run scoreboard players operation @s stat_total_talent += @s stat_temp_talent
execute as @a run scoreboard players operation @s stat_total_item += @s stat_temp_item
execute as @a run scoreboard players operation @s stat_total_down += @s stat_temp_down
execute as @a run scoreboard players operation @s stat_total_play_time += @s stat_temp_play_time

# 玩家经验计算
execute as @a[team=protect] run function base:exp/caculate/protect
execute as @a[team=dead] run function base:exp/caculate/soul
execute as @a[team=finish] run function base:exp/caculate/soul
scoreboard players reset @a[team=unready] temp_exp

# 重置计分板
scoreboard players reset @a stat_temp_collect
scoreboard players reset @a stat_temp_heal
scoreboard players reset @a stat_temp_open
scoreboard players reset @a stat_temp_hit
scoreboard players reset @a stat_temp_skill
scoreboard players reset @a stat_temp_talent
scoreboard players reset @a stat_temp_item
scoreboard players reset @a stat_temp_down
scoreboard players reset @a stat_temp_play_time
scoreboard players reset $soul_rank temp
scoreboard players reset @a countdown
scoreboard players reset @a sneak_time
scoreboard players set @a state 0
scoreboard players set $shard_collected temp 0
scoreboard players set $shard_goal temp 0