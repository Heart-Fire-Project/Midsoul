# And Stop……
execute as @e[tag=marker_purple] at @s unless entity @e[distance=..3,tag=purple] run tag @s add purple_empty
execute at @e[tag=purple_empty,limit=1,sort=random] run summon minecraft:block_display ~ ~ ~ {Tags:[game_entity,new_purple,purple],Glowing:1b,block_state:{Name:sculk_shrieker},transformation:{scale:[1f,1f,1f],translation:[-0.5f,0f,-0.5f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}
execute as @e[tag=new_purple] run team join portal @s
execute as @e[tag=new_purple] run tag @s remove new_purple
execute as @e[tag=purple_empty] run tag @s remove purple_empty

# Get set……
title @a title ""
title @a subtitle {"translate":"ms.title.portal_next","fallback":"⚜ 第二传送门已出现 ⚜","color":"#FF96F9"}
playsound minecraft:entity.warden.attack_impact player @a[team=!admin] 0 1000000 0 1000000 0.7

# Go
scoreboard players add $portal temp 1
$scoreboard players set $4_portal countdown $(shard_goal)
scoreboard players operation $4_portal countdown *= #40 data
execute if score $4_portal countdown matches ..600 run scoreboard players set $4_portal countdown 600