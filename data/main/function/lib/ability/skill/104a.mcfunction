# 确认是否是可生成点位
execute as @e[tag=marker_gray] at @s if entity @e[distance=..0.1,tag=gray] run tag @s add summon_no
execute as @e[tag=marker_gray] at @s unless entity @a[tag=game_player,distance=..1000] run tag @s add summon_no

# 进行生成
execute at @e[tag=!summon_no,tag=marker_gray,sort=random,limit=2] run summon block_display ~ ~ ~ {Tags:[game_entity,new_gray,gray,cursed_gray],block_state:{Name:light_gray_shulker_box},transformation:{scale:[0.5f,0.5f,0.5f],translation:[-0.25f,0f,-0.25f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}
execute at @e[tag=new_gray] run particle dust{color:[1,1,1],scale:1} ~ ~0.2 ~ 0.2 0.1 0.2 0 7 force @a
team join chest @e[tag=new_gray]
tag @e remove new_gray

tag @e remove summon_no