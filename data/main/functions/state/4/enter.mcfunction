# 状态 4 - 逃离
scoreboard players set $state data 4

# Bossbar 调整
bossbar set midsoul:heed players
bossbar set midsoul:warn players
bossbar set midsoul:info players @a[team=!admin]

# Rea-
execute at @e[tag=marker_purple,limit=1,sort=random] run summon minecraft:block_display ~ ~ ~ {Tags:[game_entity,new_purple,purple],Glowing:1b,block_state:{Name:sculk_shrieker},transformation:{scale:[1f,1f,1f],translation:[-0.5f,0f,-0.5f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}
execute as @e[tag=new_purple] run team join portal @s
tag @e[tag=new_purple] remove new_purple

# -dy
scoreboard players set $portal temp 1

# Get
title @a title ""
title @a subtitle {"translate":"ms.title.portal","fallback":"⚜ 传送门已出现 ⚜","color":"#7367F0"}
playsound minecraft:entity.warden.emerge player @a[team=!admin] 0 1000000 0 1000000

# Set
$scoreboard players set $4_portal countdown $(shard_goal)
scoreboard players operation $4_portal countdown *= #40 data
execute if score $4_portal countdown matches ..600 run scoreboard players set $4_portal countdown 600
execute store result bossbar midsoul:info max run scoreboard players get $4_portal countdown

# Go
execute as @a[team=soul] run attribute @s generic.movement_speed base set 0.12
execute as @a[team=protect] run attribute @s generic.movement_speed base set 0.16