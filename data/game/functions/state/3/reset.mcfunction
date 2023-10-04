scoreboard players set $shard_collected temp 0
execute if score $map temp matches 1 run scoreboard players set $shard_goal temp 24
execute if score $map temp matches 2 run scoreboard players set $shard_goal temp 18
execute if score $map temp matches 3 run scoreboard players set $shard_goal temp 40

# Bossbar 设置
bossbar set midsoul:info style progress
bossbar set midsoul:heed style progress
bossbar set midsoul:warn style progress
execute store result bossbar midsoul:info max run scoreboard players get $shard_goal temp
execute store result bossbar midsoul:heed max run scoreboard players get $shard_goal temp
execute store result bossbar midsoul:warn max run scoreboard players get $shard_goal temp

# 重置计分板
scoreboard players reset $soul_rank temp
scoreboard players reset @a countdown
scoreboard players reset @a sneak_time
scoreboard players set @a state 0

# 天赋或技能CD
# 分数为 时间*200
scoreboard players reset * skill_cd
scoreboard players reset * talent_1_cd
scoreboard players reset * talent_2_cd
scoreboard players set @a[team=alive,scores={skill=1}] skill_cd 21000
scoreboard players set @a[team=alive,scores={skill=2}] skill_cd 27000
scoreboard players set @a[team=alive,scores={skill=3}] skill_cd 18000
scoreboard players set @a[team=protect,scores={skill=1}] skill_cd 21000
scoreboard players set @a[team=protect,scores={skill=2}] skill_cd 27000
scoreboard players set @a[team=protect,scores={skill=3}] skill_cd 18000
scoreboard players set @a[team=alive,scores={talent_1=2}] talent_1_cd 12000
scoreboard players set @a[team=protect,scores={talent_1=2}] talent_1_cd 12000
scoreboard players set @a[team=protect,scores={talent_1=4}] talent_1_cd 18000
scoreboard players set @a[team=alive,scores={talent_2=2}] talent_2_cd 12000
scoreboard players set @a[team=protect,scores={talent_2=2}] talent_2_cd 12000
scoreboard players set @a[team=protect,scores={talent_2=4}] talent_2_cd 18000

# 天赋或技能标签
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
tag @a add no_hit

scoreboard players reset @a stat_temp_collect
scoreboard players reset @a stat_temp_heal
scoreboard players reset @a stat_temp_open
scoreboard players reset @a stat_temp_hit
scoreboard players reset @a stat_temp_skill
scoreboard players reset @a stat_temp_talent
scoreboard players reset @a stat_temp_item
scoreboard players reset @a stat_temp_down
scoreboard players reset @a stat_temp_play_time

# 教程
execute as @a run function base:tutorial/game_start