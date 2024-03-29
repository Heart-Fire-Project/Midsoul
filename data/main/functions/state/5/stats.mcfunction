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

# 胜 / 平 / 输 / 总
scoreboard players add @a[tag=game_player,team=!admin] stat_play 1
execute if score $finish temp matches 1.. run scoreboard players add @a[team=finish] stat_win 1
execute if score $finish temp matches 1.. run scoreboard players add @a[team=dead] stat_win 1
execute if score $finish temp matches 1.. run scoreboard players add @a[team=protect] stat_lose 1
execute if score $finish temp matches 0 run scoreboard players add @a[tag=game_player,team=!admin] stat_draw 1
execute if score $finish temp matches ..-1 run scoreboard players add @a[team=protect] stat_win 1
execute if score $finish temp matches ..-1 run scoreboard players add @a[team=finish] stat_lose 1
execute if score $finish temp matches ..-1 run scoreboard players add @a[team=dead] stat_lose 1