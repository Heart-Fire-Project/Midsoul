# 状态 3 - 追逃
scoreboard players set $state data 3
scoreboard players operation $mode temp = $gamemode data

# 生成碎片
$execute at @e[tag=marker_blue,sort=random,limit=$(shard_summon)] run summon item ~ ~0.5 ~ {Tags:[game_entity,new_blue,blue],Item:{id:"minecraft:echo_shard",Count:1},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute at @e[tag=new_blue] run particle glow ~ ~0.2 ~ 0.2 0.1 0.2 5 15 force @a
execute as @e[tag=new_blue] run team join shard @s
execute as @e[tag=new_blue] run tag @s remove new_blue

# 首次生成宝箱
$execute at @e[tag=marker_gray,sort=random,limit=$(chest_summon)] run summon minecraft:block_display ~ ~ ~ {Tags:[game_entity,new_gray,gray],block_state:{Name:light_gray_shulker_box},transformation:{scale:[0.5f,0.5f,0.5f],translation:[-0.25f,0f,-0.25f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}
execute at @e[tag=new_gray] run particle dust 1 1 1 1.0 ~ ~0.2 ~ 0.2 0.1 0.2 0 1 force @a
execute as @e[tag=new_gray] run team join chest @s
execute as @e[tag=new_gray] run tag @s remove new_gray
scoreboard players set $chest_summon countdown 180

# 标题
title @a[team=!admin] title {"translate":"ms.title","fallback":"午夜 🔯 灵魂","color":"#7367F0"}
title @a[team=!admin] subtitle {"translate":"ms.title.start","fallback":"▣ 游戏开始 ▣","color":"#7367F0"}
playsound minecraft:block.end_portal.spawn player @a[team=!admin] 0 1000000 0 1000000 1

# 重设计分板
scoreboard players set $shard_collect temp 0
scoreboard players reset $aura_rank temp
scoreboard players reset $force_end temp
scoreboard players reset $play_time temp
scoreboard players reset @a countdown
scoreboard players reset @a sneak_time
scoreboard players reset @a sleep_detect
scoreboard players set @a state 0

# 天赋与技能计分板
scoreboard players set $talent_007 temp 5
scoreboard objectives remove talent_107
scoreboard objectives add talent_107 dummy "碎片侵蚀 - 污染数"
scoreboard players set @a[team=protect,scores={talent_1=7}] talent_107 0
scoreboard players set @a[team=protect,scores={talent_2=7}] talent_107 0
scoreboard objectives remove skill_004
scoreboard objectives add skill_004 dummy "铤而走险 - 负面几率"
scoreboard players set @a[team=soul,scores={skill=4}] skill_004 5
scoreboard objectives remove skill_102
scoreboard objectives add skill_102 dummy  "灵力掌控 - 叠加层数"
scoreboard players set @a[team=protect,scores={skill=2}] skill_102 0
scoreboard objectives remove skill_103
scoreboard objectives add skill_103 dummy  "唤灵留迹 - 生效对象"

# Bossbar
bossbar set midsoul:info style progress
bossbar set midsoul:heed style progress
bossbar set midsoul:warn style progress
$bossbar set midsoul:info max $(shard_goal)
$bossbar set midsoul:heed max $(shard_goal)
$bossbar set midsoul:warn max $(shard_goal)

# 冷却 | 秒数*200 | 初始 120%
# 填入时间 | 09600 | 10800 | 12000 | 13200 | 14400 | 15600 | 16800 | 18000 | 19200 | 20400 | 21600
# 实际冷却 |   40  |   45  |   50  |   55  |   60  |   65  |   70  |   75  |   80  |   85  |   90
scoreboard players reset * skill_tick
scoreboard players reset * talent_1_tick
scoreboard players reset * talent_2_tick
scoreboard players set @a[team=soul,scores={skill=1}] skill_tick 14400
scoreboard players set @a[team=soul,scores={skill=2}] skill_tick 18000
scoreboard players set @a[team=soul,scores={skill=3}] skill_tick 16800
scoreboard players set @a[team=soul,scores={skill=4}] skill_tick 14400
scoreboard players set @a[team=soul,scores={skill=5}] skill_tick 10800
scoreboard players set @a[team=protect,scores={skill=1}] skill_tick 16800
scoreboard players set @a[team=protect,scores={skill=2}] skill_tick 16800
scoreboard players set @a[team=protect,scores={skill=3}] skill_tick 14400
scoreboard players set @a[team=protect,scores={skill=4}] skill_tick 12000
scoreboard players set @a[team=protect,scores={skill=5}] skill_tick 18000
scoreboard players set @a[team=soul,scores={talent_1=2}] talent_1_tick 14400
scoreboard players set @a[team=protect,scores={talent_1=2}] talent_1_tick 14400
scoreboard players set @a[team=protect,scores={talent_1=4}] talent_1_tick 21600
scoreboard players set @a[team=protect,scores={talent_1=5}] talent_1_tick 14400
scoreboard players set @a[team=protect,scores={talent_1=7}] talent_1_tick 09600
scoreboard players set @a[team=soul,scores={talent_2=2}] talent_2_tick 14400
scoreboard players set @a[team=protect,scores={talent_2=2}] talent_2_tick 14400
scoreboard players set @a[team=protect,scores={talent_2=4}] talent_2_tick 21600
scoreboard players set @a[team=protect,scores={talent_2=5}] talent_2_tick 14400
scoreboard players set @a[team=protect,scores={talent_2=7}] talent_2_tick 09600
execute if score $mode temp matches 2 run scoreboard players set @a[tag=game_player] skill_tick 0
execute if score $mode temp matches 2 run scoreboard players set @a[tag=game_player] talent_1_tick 0
execute if score $mode temp matches 2 run scoreboard players set @a[tag=game_player] talent_2_tick 0

# 使用到的标签
tag @a[team=soul] add no_hit
tag @a remove skill_on
tag @a remove talent_1_on
tag @a remove talent_2_on
tag @a remove item_on
tag @a remove double_damage
tag @a remove hit_soul

# 清空临时数据
scoreboard players reset @a stat_temp_collect
scoreboard players reset @a stat_temp_heal
scoreboard players reset @a stat_temp_dying
scoreboard players reset @a stat_temp_open
scoreboard players reset @a stat_temp_hit
scoreboard players reset @a stat_temp_down
scoreboard players reset @a stat_temp_skill
scoreboard players reset @a stat_temp_talent
scoreboard players reset @a stat_temp_item
scoreboard players reset @a stat_temp_play_time
scoreboard players reset @a stat_temp_track_time

# 初始速度
execute as @a[team=soul] run attribute @s generic.movement_speed base set 0.10
execute as @a[team=protect] run attribute @s generic.movement_speed base set 0.12

# 给初始效果
execute as @a[tag=game_player] run function main:state/3/effect

# 即刻刷新一次物品栏
execute as @a[team=!admin] run function main:state/3/inventory_pre

# 就想去逃避
execute if score $mode temp matches 2 run function main:state/4/enter with storage ms:map