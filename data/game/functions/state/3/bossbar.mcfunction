# 设置数值
execute store result bossbar midsoul:info value run scoreboard players get $shard_collected temp
execute store result bossbar midsoul:heed value run scoreboard players get $shard_collected temp
execute store result bossbar midsoul:warn value run scoreboard players get $shard_collected temp

# 设置名称
bossbar set midsoul:info name [{"translate":"ms.bossbar.3.info","fallback": "💠 气流稳定 💠 | 碎片收集 » ","color": "aqua"},{"score":{"objective":"temp","name": "$shard_collected"},"color": "blue"},{"text": "/","color": "aqua"},{"score":{"objective":"temp","name": "$shard_goal"}}]
bossbar set midsoul:heed name [{"translate":"ms.bossbar.3.heed","fallback": "💠 气流异常 💠 | 碎片收集 » ","color": "yellow"},{"score":{"objective":"temp","name": "$shard_collected"},"color": "gold"},{"text": "/","color": "yellow"},{"score":{"objective":"temp","name": "$shard_goal"}}]
bossbar set midsoul:warn name [{"translate":"ms.bossbar.3.warn","fallback": "💠 气流紊乱 💠 | 碎片收集 » ","color": "red"},{"score":{"objective":"temp","name": "$shard_collected"},"color": "#E80505"},{"text": "/","color": "red"},{"score":{"objective":"temp","name": "$shard_goal"}}]

# 选取范围
execute as @a[team=alive] at @s unless entity @a[team=protect,distance=0..24] run tag @s add bossbar_info
execute as @a[team=alive] at @s if entity @a[team=protect,distance=13..24] run tag @s add bossbar_heed
execute as @a[team=alive] at @s if entity @a[team=protect,distance=0..13] run tag @s add bossbar_warn
execute as @a[team=protect] at @s unless entity @a[team=alive,distance=0..24,scores={state=0}] run tag @s add bossbar_info
execute as @a[team=protect] at @s if entity @a[team=alive,distance=0..24,scores={state=0}] run tag @s add bossbar_heed
tag @a[team=unready] add bossbar_info
tag @a[team=dead] add bossbar_info

# 教程
execute as @a[tag=!bossbar_tr,tag=bossbar_heed] run function base:tutorial/bossbar

# 天赋影响
execute at @a[team=protect,scores={talent_1=1}] run tag @a[tag=bossbar_warn,distance=8..] add bossbar_heed
execute at @a[team=protect,scores={talent_1=1}] run tag @a[tag=bossbar_warn,distance=8..] remove bossbar_warn
execute at @a[team=protect,scores={talent_2=1}] run tag @a[tag=bossbar_warn,distance=8..] add bossbar_heed
execute at @a[team=protect,scores={talent_2=1}] run tag @a[tag=bossbar_warn,distance=8..] remove bossbar_warn

# 设置
bossbar set midsoul:info players @a[tag=bossbar_info]
tag @a remove bossbar_info
bossbar set midsoul:heed players @a[tag=bossbar_heed]
tag @a remove bossbar_heed
bossbar set midsoul:warn players @a[tag=bossbar_warn]
tag @a remove bossbar_warn