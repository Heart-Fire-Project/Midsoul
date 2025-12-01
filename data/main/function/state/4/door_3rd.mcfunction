# 不选择已有的两个门周围 60 格内的
execute at @e[tag=purple] run tag @e[tag=marker_purple,distance=..60] add no_summon
execute at @e[tag=purple] run tag @e[tag=marker_purple,distance=..1] add never_summon

# 剩下的爱去哪去哪
execute at @e[tag=marker_purple,tag=!no_summon,limit=1,sort=random] run summon block_display ~ ~ ~ {Tags:[game_entity,new_purple,purple,"3rd_door"],Glowing:0b,block_state:{Name:sculk_shrieker},transformation:{scale:[1f,1f,1f],translation:[-0.5f,0f,-0.5f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}

# 如果没有那我也没招了
execute unless entity @e[tag=new_purple] at @e[tag=marker_purple,tag=!never_summon,limit=1,sort=random] run summon block_display ~ ~ ~ {Tags:[game_entity,new_purple,purple,"3rd_door"],Glowing:0b,block_state:{Name:sculk_shrieker},transformation:{scale:[1f,1f,1f],translation:[-0.5f,0f,-0.5f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}

tag @e remove no_summon
tag @e remove never_summon
execute as @e[tag=new_purple] run team join portal @s
scoreboard players set @e[tag=new_purple] tick.general 0
execute at @e[tag=new_purple] run summon text_display ~ ~1.2 ~ {Tags:[game_entity,purple_progress],interpolation_duration:0,billboard:"center",alignment:"center",background:-2134114303,line_width:200,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
scoreboard players set @e[tag=purple_progress] tick.general 0
scoreboard players set @e[tag=purple_progress] state 0
tag @e[tag=new_purple] remove new_purple