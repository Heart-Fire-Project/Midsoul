# 未完成按照失败计算
execute as @a[team=alive] run function game:state/3/soul_died

# 统计数据
scoreboard players add @a[team=dead] stat_dead 1
scoreboard players add @a[team=finish] stat_finish 1
execute as @a run scoreboard players operation @s stat_total_collect += @s stat_temp_collect
execute as @a run scoreboard players operation @s stat_total_heal += @s stat_temp_heal
execute as @a run scoreboard players operation @s stat_total_open += @s stat_temp_open
execute as @a run scoreboard players operation @s stat_total_skill += @s stat_temp_skill
execute as @a run scoreboard players operation @s stat_total_talent += @s stat_temp_talent
execute as @a run scoreboard players operation @s stat_total_item += @s stat_temp_item
execute as @a run scoreboard players operation @s stat_total_down += @s stat_temp_down
execute as @a run scoreboard players operation @s stat_total_play_time += $temp stat_temp_play_time

# 重置计分板
scoreboard players reset @a stat_temp_collect
scoreboard players reset @a stat_temp_heal
scoreboard players reset @a stat_temp_open
scoreboard players reset @a stat_temp_skill
scoreboard players reset @a stat_temp_talent
scoreboard players reset @a stat_temp_item
scoreboard players reset $soul_rank temp
scoreboard players reset @a countdown
scoreboard players reset @a sneak_time
scoreboard players set @a state 0
scoreboard players set $shard_collected temp 0
scoreboard players set $shard_goal temp 0

# 清除标签
tag @a remove just_healed
tag @a remove heal_damage
tag @a remove healed_1
tag @a remove healed_2
tag @a remove skill_001_active
tag @a remove skill_002_active
tag @a remove skill_102_active
tag @a remove skill_102_double
tag @a remove skill_103_active
tag @a remove talent_001_active
tag @a remove talent_004_active
tag @a remove talent_104_active

# 添加游玩记录
tag @a[team=protect] add protect_tr
tag @a[team=dead] add soul_tr
tag @a[team=finish] add soul_tr

# 进入结算画面
function game:state/5/end_process