# 设置数值
execute store result bossbar midsoul:info value run scoreboard players get $shard_collect temp
execute store result bossbar midsoul:heed value run scoreboard players get $shard_collect temp
execute store result bossbar midsoul:warn value run scoreboard players get $shard_collect temp

# 设置名称
$bossbar set midsoul:info name [{"translate":"ms.bossbar.3.info","fallback":"💠 气流稳定 💠 | 碎片收集 » ","color":"aqua"},{"score":{"objective":"temp","name":"$shard_collect"},"color":"blue"},{"text":"/"},{"text":"$(shard_goal)"}]
$bossbar set midsoul:heed name [{"translate":"ms.bossbar.3.heed","fallback":"💠 气流异常 💠 | 碎片收集 » ","color":"yellow"},{"score":{"objective":"temp","name":"$shard_collect"},"color":"gold"},{"text":"/"},{"text":"$(shard_goal)"}]
$bossbar set midsoul:warn name [{"translate":"ms.bossbar.3.warn","fallback":"💠 气流紊乱 💠 | 碎片收集 » ","color":"red"},{"score":{"objective":"temp","name":"$shard_collect"},"color":"#E80505"},{"text":"/"},{"text":"$(shard_goal)"}]

# 能力生效
execute as @a[team=soul,scores={talent_1=5,sneak_time=1..}] run tag @s add T005
execute as @a[team=protect,scores={talent_1=1}] run tag @s add T101
execute as @a[team=soul,scores={talent_2=5,sneak_time=1..}] run tag @s add T005
execute as @a[team=protect,scores={talent_2=1}] run tag @s add T101

# 选取范围
execute as @a[team=protect] at @s if entity @a[team=soul,distance=..24,tag=!T005,scores={state=0}] run tag @s add heed
execute as @a[team=soul] at @s if entity @a[team=protect,distance=..24] run tag @s add heed
execute as @a[team=soul] at @s if entity @a[team=protect,distance=..12,tag=!T101] run tag @s add warn
execute as @a[team=soul] at @s if entity @a[team=protect,distance=..8] run tag @s add warn

# 设置
bossbar set midsoul:info players @a[tag=!warn,tag=!heed,team=!admin]
bossbar set midsoul:heed players @a[tag=!warn,tag=heed,team=!admin]
bossbar set midsoul:warn players @a[tag=warn,team=!admin]

# 清除标签
tag @a remove heed
tag @a remove warn
tag @a remove T005
tag @a remove T101