# 状态 4 - 充能
scoreboard players set $state data 4

# 生成传送门 | 两个传送门相距 60~80 格
execute at @e[tag=marker_purple,limit=1,sort=random] run summon block_display ~ ~ ~ {Tags:[game_entity,new_purple,purple],Glowing:1b,block_state:{Name:sculk_shrieker},transformation:{scale:[1f,1f,1f],translation:[-0.5f,0f,-0.5f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}
execute at @n[tag=new_purple] at @e[tag=marker_purple,limit=1,sort=random,distance=60..80] run summon block_display ~ ~ ~ {Tags:[game_entity,new_purple,purple],Glowing:1b,block_state:{Name:sculk_shrieker},transformation:{scale:[1f,1f,1f],translation:[-0.5f,0f,-0.5f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}

# 没有符合的 | 改为 50~90 格
scoreboard players set $temp temp 0
execute as @e[tag=new_purple] run scoreboard players add $temp temp 1
execute if score $temp temp matches 1 at @n[tag=new_purple] at @e[tag=marker_purple,limit=1,sort=random,distance=50..90] run summon block_display ~ ~ ~ {Tags:[game_entity,new_purple,purple],Glowing:1b,block_state:{Name:sculk_shrieker},transformation:{scale:[1f,1f,1f],translation:[-0.5f,0f,-0.5f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}

# 还没有就开摆
scoreboard players set $temp temp 0
execute as @e[tag=new_purple] run scoreboard players add $temp temp 1
execute if score $temp temp matches 1 at @n[tag=new_purple] at @e[tag=marker_purple,limit=1,sort=random] run summon block_display ~ ~ ~ {Tags:[game_entity,new_purple,purple],Glowing:1b,block_state:{Name:sculk_shrieker},transformation:{scale:[1f,1f,1f],translation:[-0.5f,0f,-0.5f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}

# 善后工作
execute as @e[tag=new_purple] run team join portal @s
scoreboard players set @e[tag=new_purple] tick.global 0
execute at @e[tag=new_purple] run summon text_display ~ ~1.2 ~ {Tags:["game_entity","purple_progress"],interpolation_duration:15,start_interpolation:0,billboard:"center",alignment:"center",line_width:200,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
scoreboard players set @e[tag=purple_progress] tick.global 0
tag @e[tag=new_purple] remove new_purple
title @a title ""
title @a subtitle {"translate":"ms.title.4.portal","fallback":"⚜ 传送门已出现 ⚜","color":"#7367F0"}
playsound entity.warden.attack_impact player @a[team=!admin] 0 1000000 0 1000000 0.7

# 设置计时
scoreboard players set $4_single state 0
scoreboard players set $4_finale state 0
scoreboard players set $4_process tick.global 0
execute store result score $4_portal tick.global run data get storage ms:map original_goal
scoreboard players operation $4_portal tick.global *= #100 data
scoreboard players add $4_portal tick.global 1600

# 初始化 Bossbar
bossbar set midsoul:info style notched_12
bossbar set midsoul:heed style notched_12
bossbar set midsoul:warn style notched_12
execute store result bossbar midsoul:info max run scoreboard players get $4_portal tick.global
execute store result bossbar midsoul:heed max run scoreboard players get $4_portal tick.global
execute store result bossbar midsoul:warn max run scoreboard players get $4_portal tick.global

# 设置速度
execute as @a[team=guardian] run attribute @s movement_speed base set 0.14
execute if score $echo data matches 7 as @a[team=soul,scores={state=0}] run attribute @s movement_speed base set 0.175
execute if score $echo data matches 7 as @a[team=guardian,scores={state=0}] run attribute @s movement_speed base set 0.21

# 回响效果
execute if score $echo data matches 9 run scoreboard players set @e[tag=purple] tick.global 999999999

# 教程
advancement grant @a[tag=game_player] only main:tutorial/interact/4
advancement grant @a[team=guardian] only main:tutorial/attack/4