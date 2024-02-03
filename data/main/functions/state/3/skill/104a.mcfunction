# 看看哪里不能生成
execute as @e[tag=gray] run tag @e[tag=marker_gray,distance=..1] add no_summon

# 剩下的都能生成
execute at @e[tag=!no_summon,tag=marker_gray,sort=random,limit=2] run summon minecraft:block_display ~ ~ ~ {Tags:[game_entity,new_gray,gray,cursed],block_state:{Name:light_gray_shulker_box},transformation:{scale:[0.5f,0.5f,0.5f],translation:[-0.25f,0f,-0.25f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}

tag @e remove no_summon