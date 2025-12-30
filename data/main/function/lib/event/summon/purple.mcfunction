# 确认是否是可生成点位
execute as @e[tag=marker_purple] at @s unless entity @a[tag=game_player,distance=..1000] run tag @s add summon_no

# 生成第一传送门
execute at @e[tag=!summon_no,tag=marker_purple,limit=1,sort=random] run summon block_display ~ ~ ~ {Tags:[game_entity,new_purple,purple],Glowing:1b,block_state:{Name:sculk_shrieker},transformation:{scale:[1f,1f,1f],translation:[-0.5f,0f,-0.5f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}

# 生成第二传送门 | 间隔 60~80 格 +4 权重，间隔 50~90 格 +3 权重，距离 91~120 格 +2 权重；若完全没有，则 50 格内最远与 120 格外最近获得权重
scoreboard players set $total temp2 0
scoreboard players reset * temp
scoreboard players reset * temp2
execute at @n[tag=new_purple] run scoreboard players add @e[tag=marker_purple,distance=60..80] temp 4
execute at @n[tag=new_purple] run scoreboard players add @e[tag=marker_purple,distance=50..90] temp 3
execute at @n[tag=new_purple] run scoreboard players add @e[tag=marker_purple,distance=91..120] temp 2
execute at @n[tag=new_purple] unless entity @e[tag=marker_purple,distance=50..120] run scoreboard players add @e[tag=marker_purple,distance=..50,limit=1,sort=furthest] temp 100
execute at @n[tag=new_purple] unless entity @e[tag=marker_purple,distance=50..120] run scoreboard players add @n[tag=marker_purple,distance=120..] temp 100
execute as @e[tag=marker_purple,scores={temp=1..}] run function main:lib/event/summon/purple_repeat
data merge storage ms:temp {min:1}
execute store result storage ms:temp max int 1 run scoreboard players get $total temp2
function base:random with storage ms:temp
execute as @e[tag=marker_purple,scores={temp=1..}] run scoreboard players operation @s temp2 -= $random temp2
scoreboard players reset @e[tag=marker_purple,scores={temp2=..-1}] temp2
scoreboard players set $min temp2 1010000
scoreboard players operation $min temp2 < @e[tag=marker_purple,scores={temp2=0..}] temp2
execute as @e[tag=marker_purple,scores={temp=1..}] if score @s temp2 = $min temp2 run tag @s add summon_select
execute at @e[tag=summon_select] run summon block_display ~ ~ ~ {Tags:[game_entity,new_purple,purple],Glowing:1b,block_state:{Name:sculk_shrieker},transformation:{scale:[1f,1f,1f],translation:[-0.5f,0f,-0.5f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}

# 善后工作
execute as @e[tag=new_purple] run team join portal @s
scoreboard players set @e[tag=new_purple] tick.general 0
execute at @e[tag=new_purple] run summon text_display ~ ~1.2 ~ {Tags:[game_entity,purple_progress],interpolation_duration:0,billboard:"center",alignment:"center",background:-2134114303,line_width:200,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
scoreboard players set @e[tag=purple_progress] tick.general 0
scoreboard players set @e[tag=purple_progress] state 0
tag @e[tag=new_purple] remove new_purple
tag @e remove summon_select
scoreboard players reset * temp
scoreboard players reset * temp2