# 确认是否是可生成点位
execute as @e[tag=marker_purple] at @s if entity @e[distance=..0.1,tag=purple] run tag @s add summon_no
execute as @e[tag=marker_purple] at @s unless entity @a[tag=game_player,distance=..1000] run tag @s add summon_no

# 原则上不选择已有的两个门周围 60 格内的
execute at @e[tag=purple] run tag @e[tag=marker_purple,distance=..60] add summon_bad

# 剩下的爱去哪去哪
execute at @e[tag=marker_purple,tag=!summon_bad,tag=!summon_no,limit=1,sort=random] run summon block_display ~ ~ ~ {Tags:[game_entity,new_purple,purple,purple_3rd],Glowing:0b,block_state:{Name:"sculk_shrieker"},transformation:{scale:[1f,1f,1f],translation:[-0.5f,0f,-0.5f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}

# 如果没有那就无视原则吧
execute unless entity @e[tag=new_purple] at @e[tag=marker_purple,tag=!summon_no,limit=1,sort=random] run summon block_display ~ ~ ~ {Tags:[game_entity,new_purple,purple,purple_3rd],Glowing:0b,block_state:{Name:"sculk_shrieker"},transformation:{scale:[1f,1f,1f],translation:[-0.5f,0f,-0.5f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}

team join portal @e[tag=new_purple]
scoreboard players set @e[tag=new_purple] tick.general 0
scoreboard players set @e[tag=new_purple] state 0
execute at @e[tag=new_purple] run summon text_display ~ ~1.2 ~ {Tags:[game_entity,purple_progress],interpolation_duration:0,billboard:"center",alignment:"center",background:-2134114303,line_width:200,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
scoreboard players set @e[tag=purple_progress] tick.general 0
scoreboard players set @e[tag=purple_progress] state 0
tag @e[tag=new_purple] remove new_purple

tag @e remove summon_no
tag @e remove summon_bad