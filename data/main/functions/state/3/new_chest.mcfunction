# 设置一下新箱子条件
$scoreboard players set $chest_max temp $(chest_max)
scoreboard players set $chest_current temp 0
execute as @e[tag=gray] run scoreboard players add $chest_current temp 1
execute as @e[tag=gray] run tag @e[tag=marker_gray,distance=..1] add no_summon

# 能生成就生，生不成哥们等你回来
$execute if score $chest_current temp < $chest_max temp at @e[tag=!no_summon,tag=marker_gray,sort=random,limit=$(chest_summon)] run summon minecraft:block_display ~ ~ ~ {Tags:[game_entity,new_gray,gray],block_state:{Name:light_gray_shulker_box},transformation:{scale:[0.5f,0.5f,0.5f],translation:[-0.25f,0f,-0.25f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}
execute at @e[tag=new_gray] run particle dust 1 1 1 1.0 ~ ~0.2 ~ 0.2 0.1 0.2 0 1 force @a
execute as @e[tag=new_gray] run team join chest @s
execute as @e[tag=new_gray] run tag @s remove new_gray
tag @e remove no_summon

# 生成了就滚
execute if score $chest_current temp < $chest_max temp run tellraw @a[team=!admin] [{"text":" » ","color":"#CCCCCC","bold":true},{"translate":"ms.info.chest","fallback":"已生成数个灵魂宝物箱","bold":false},"\n"]
execute if score $chest_current temp < $chest_max temp run scoreboard players set $chest_summon countdown 180