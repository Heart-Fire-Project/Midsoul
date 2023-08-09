# 统一设置样式
bossbar set midsoul:info style progress
bossbar set midsoul:heed style progress
bossbar set midsoul:warn style progress

# 设置数值
execute store result bossbar midsoul:info max run scoreboard players get $shard_goal temp
execute store result bossbar midsoul:heed max run scoreboard players get $shard_goal temp
execute store result bossbar midsoul:warn max run scoreboard players get $shard_goal temp
execute store result bossbar midsoul:info value run scoreboard players get $shard_collected temp
execute store result bossbar midsoul:heed value run scoreboard players get $shard_collected temp
execute store result bossbar midsoul:warn value run scoreboard players get $shard_collected temp

# 设置名称
bossbar set midsoul:info name [{"translate":"ms.bossbar.3.info","fallback": "💠 气流稳定 💠 | 碎片收集 » ","color": "aqua"},{"score":{"objective":"temp","name": "$shard_collected"},"color": "blue"},{"text": "/","color": "aqua"},{"score":{"objective":"temp","name": "$shard_goal"}}]
bossbar set midsoul:heed name [{"translate":"ms.bossbar.3.heed","fallback": "💠 气流异常 💠 | 碎片收集 » ","color": "yellow"},{"score":{"objective":"temp","name": "$shard_collected"},"color": "gold"},{"text": "/","color": "yellow"},{"score":{"objective":"temp","name": "$shard_goal"}}]
bossbar set midsoul:warn name [{"translate":"ms.bossbar.3.warn","fallback": "💠 气流紊乱 💠 | 碎片收集 » ","color": "red"},{"score":{"objective":"temp","name": "$shard_collected"},"color": "#E80505"},{"text": "/","color": "red"},{"score":{"objective":"temp","name": "$shard_goal"}}]

# 选取范围
execute as @a[team=alive] at @s unless entity @a[team=protect,distance=0..24] run tag @s add bossbar_info
execute as @a[team=alive] at @s if entity @a[team=protect,distance=9..24] run tag @s add bossbar_heed
execute as @a[team=alive] at @s if entity @a[team=protect,distance=0..9] run tag @s add bossbar_warn
execute as @a[team=protect] at @s unless entity @a[team=alive,distance=0..24] run tag @s add bossbar_info
execute as @a[team=protect] at @s if entity @a[team=alive,distance=0..24] run tag @s add bossbar_heed
tag @a[team=unready] add bossbar_info

# 教程
tellraw @a[team=alive,tag=!bossbar_tr,tag=bossbar_heed] [{"text": " » ","bold": true,"color": "aqua"},{"translate":"ms.tutorial.bossbar","fallback": "通过最上方的气流判断可以注意到敌方的存在, 且灵魂对之更加敏感!","bold": false}]
tellraw @a[team=protect,tag=!bossbar_tr,tag=bossbar_heed] [{"text": " » ","bold": true,"color": "red"},{"translate":"ms.tutorial.bossbar","fallback": "通过最上方的气流判断可以注意到敌方的存在, 且灵魂对之更加敏感!","bold": false}]
tag @a[tag=!bossbar_tr,tag=bossbar_heed] add bossbar_tr

# 天赋影响
execute if entity @a[team=protect,scores={talent_1=1}] run tag @a[tag=bossbar_warn] add bossbar_heed
execute if entity @a[team=protect,scores={talent_1=1}] run tag @a[tag=bossbar_warn] remove bossbar_warn
execute if entity @a[team=protect,scores={talent_2=1}] run tag @a[tag=bossbar_warn] add bossbar_heed
execute if entity @a[team=protect,scores={talent_2=1}] run tag @a[tag=bossbar_warn] remove bossbar_warn

# 设置
bossbar set midsoul:info players @a[tag=bossbar_info]
tag @a remove bossbar_info
bossbar set midsoul:heed players @a[tag=bossbar_heed]
tag @a remove bossbar_heed
bossbar set midsoul:warn players @a[tag=bossbar_warn]
tag @a remove bossbar_warn