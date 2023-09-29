# 生成碎片
execute at @e[tag=marker_blue] run summon item ~ ~0.5 ~ {Tags:[game_entity,new_blue,blue],Item:{id:"minecraft:echo_shard",Count:1},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute at @e[tag=new_blue] run particle glow ~ ~0.2 ~ 0.2 0.1 0.2 5 15 force @a
execute as @e[tag=new_blue] run team join shard @s
execute as @e[tag=new_blue] run tag @s remove new_blue

# 生成箱子
execute at @e[tag=marker_gray] run summon minecraft:block_display ~ ~ ~ {Tags:[game_entity,new_gray,gray],block_state:{Name:gray_shulker_box},transformation:{scale:[0.5f,0.5f,0.5f],translation:[-0.25f,0f,-0.25f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}execute at @e[tag=new_gray] run particle glow ~ ~0.2 ~ 0.2 0.1 0.2 5 15 force @a
execute as @e[tag=new_gray] run team join chest @s
execute as @e[tag=new_gray] run tag @s remove new_gray

# 标题
title @a[team=!admin] title {"translate":"ms.title","fallback": "午夜 🔯 灵魂","color": "#BC78EC"}
title @a[team=!admin] subtitle {"translate":"ms.title.start","fallback": "▣ 游戏开始 ▣","color": "#BC78EC"}

# 音效
playsound minecraft:block.end_portal.spawn player @a[team=!admin] 0 1000000 0 1000000 1

# 系统重置
function game:state/3/reset
execute as @a[team=!admin] run function game:state/3/refresh_inventory