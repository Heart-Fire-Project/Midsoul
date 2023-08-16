# 生成传送门
execute at @e[tag=marker_purple,limit=1,sort=random] run summon minecraft:block_display ~ ~ ~ {Tags:[game_entity,new_purple,purple],Glowing:1b,block_state:{Name:sculk_shrieker},transformation:{scale:[1f,1f,1f],translation:[-0.5f,0f,-0.5f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}
execute as @e[tag=new_purple] run team join portal @s
tag @e[tag=new_purple] remove new_purple

# 广而告之
title @a title ""
title @a subtitle {"translate":"ms.title.portal","fallback": "⚜ 传送门已出现 ⚜","color": "#BC78EC"}
playsound minecraft:entity.warden.emerge player @a[team=!admin] 0 1000000 0 1000000

# 设置倒计时
scoreboard players operation $shard_goal temp *= $60 data
scoreboard players operation $portal countdown = $shard_goal temp
execute store result bossbar midsoul:info max run scoreboard players get $portal countdown

# 教程
execute as @a[team=!admin,tag=!portal_tr] run function base:totorial/portal

# 效果
execute as @a[team=!admin] run function game:state/4/give_effect