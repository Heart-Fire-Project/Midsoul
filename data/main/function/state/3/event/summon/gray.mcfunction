# 确认是否是可生成点位
execute as @e[tag=marker_gray] at @s if entity @e[distance=..0.1,tag=gray] run tag @s add summon_no
execute as @e[tag=marker_gray] at @s unless entity @a[tag=game_player,distance=..1000] run tag @s add summon_no

# 生成新宝盒
$execute at @e[tag=!summon_no,tag=marker_gray,sort=random,limit=$(num)] run summon block_display ~ ~ ~ {Tags:[game_entity,new_gray,gray],block_state:{Name:light_gray_shulker_box},transformation:{scale:[0.5f,0.5f,0.5f],translation:[-0.25f,0f,-0.25f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}
execute at @e[tag=new_gray] run particle dust{color:[1,1,1],scale:1} ~ ~0.2 ~ 0.2 0.1 0.2 0 7 force @a
execute as @e[tag=new_gray] run team join chest @s
execute as @e[tag=new_gray] run tag @s remove new_gray

# 重置计时器
scoreboard players set $3_chest tick.general 180
execute if score $echo data matches 3 run scoreboard players set $3_chest tick.general 60

tag @e remove summon_no