function base:caculate/time {unit:"sec",tick:"$4_portal",source:"tick.global"}

# 设置进度
execute store result bossbar midsoul:info value run scoreboard players get $4_portal tick.global
execute store result bossbar midsoul:heed value run scoreboard players get $4_portal tick.global
execute store result bossbar midsoul:warn value run scoreboard players get $4_portal tick.global

# 设置名称
execute if score $ms temp2 matches ..09 run bossbar set midsoul:info name [{"translate":"ms.bossbar.4.portal","fallback":"传送门 »","color":"aqua"}," ",{"score":{"objective":"temp2","name":"$sec"},"color":"#50A7D9"},{"text":".0","color":"#50A7D9"},{"score":{"objective":"temp2","name":"$ms"},"color":"#50A7D9"}," ",{"translate":"ms.bossbar.4.portal.1","fallback":"« 已出现"}]
execute if score $ms temp2 matches 10.. run bossbar set midsoul:info name [{"translate":"ms.bossbar.4.portal","fallback":"传送门 »","color":"aqua"}," ",{"score":{"objective":"temp2","name":"$sec"},"color":"#50A7D9"},{"text":".","color":"#50A7D9"},{"score":{"objective":"temp2","name":"$ms"},"color":"#50A7D9"}," ",{"translate":"ms.bossbar.4.portal.1","fallback":"« 已出现"}]
execute if score $ms temp2 matches ..09 run bossbar set midsoul:heed name [{"translate":"ms.bossbar.4.portal","fallback":"传送门 »","color":"yellow"}," ",{"score":{"objective":"temp2","name":"$sec"},"color":"gold"},{"text":".0","color":"gold"},{"score":{"objective":"temp2","name":"$ms"},"color":"gold"}," ",{"translate":"ms.bossbar.4.portal.1","fallback":"« 已出现"}]
execute if score $ms temp2 matches 10.. run bossbar set midsoul:heed name [{"translate":"ms.bossbar.4.portal","fallback":"传送门 »","color":"yellow"}," ",{"score":{"objective":"temp2","name":"$sec"},"color":"gold"},{"text":".","color":"gold"},{"score":{"objective":"temp2","name":"$ms"},"color":"gold"}," ",{"translate":"ms.bossbar.4.portal.1","fallback":"« 已出现"}]
execute if score $ms temp2 matches ..09 run bossbar set midsoul:warn name [{"translate":"ms.bossbar.4.portal","fallback":"传送门 »","color":"red"}," ",{"score":{"objective":"temp2","name":"$sec"},"color":"#E80505"},{"text":".0","color":"#E80505"},{"score":{"objective":"temp2","name":"$ms"},"color":"#E80505"}," ",{"translate":"ms.bossbar.4.portal.1","fallback":"« 已出现"}]
execute if score $ms temp2 matches 10.. run bossbar set midsoul:warn name [{"translate":"ms.bossbar.4.portal","fallback":"传送门 »","color":"red"}," ",{"score":{"objective":"temp2","name":"$sec"},"color":"#E80505"},{"text":".","color":"#E80505"},{"score":{"objective":"temp2","name":"$ms"},"color":"#E80505"}," ",{"translate":"ms.bossbar.4.portal.1","fallback":"« 已出现"}]

# 依旧闪烁
execute if score $4_process tick.global matches 2 run bossbar set midsoul:info name ""
execute if score $4_process tick.global matches 4 run bossbar set midsoul:info name ""
execute if score $4_process tick.global matches 6 run bossbar set midsoul:info name ""
execute if score $4_process tick.global matches 2 run bossbar set midsoul:heed name ""
execute if score $4_process tick.global matches 4 run bossbar set midsoul:heed name ""
execute if score $4_process tick.global matches 6 run bossbar set midsoul:info name ""
execute if score $4_process tick.global matches 2 run bossbar set midsoul:warn name ""
execute if score $4_process tick.global matches 4 run bossbar set midsoul:warn name ""
execute if score $4_process tick.global matches 6 run bossbar set midsoul:info name ""

# 能力确认
execute as @a[team=soul,scores={talent_1=5,detect.sneak=1..}] run tag @s add T005
execute as @a[team=guardian,scores={talent_1=1}] run tag @s add T101
execute as @a[team=soul,scores={talent_2=5,detect.sneak=1..}] run tag @s add T005
execute as @a[team=guardian,scores={talent_2=1}] run tag @s add T101

# 选取范围
execute as @a[team=guardian] at @s if entity @a[distance=..24,team=soul,tag=!T005,scores={state=0}] run tag @s add heed
execute as @a[team=soul] at @s if entity @a[distance=..24,team=guardian,tag=!T101] run tag @s add heed
execute as @a[team=soul] at @s if entity @a[distance=..18,team=guardian] run tag @s add heed
execute as @a[team=soul] at @s if entity @a[distance=..12,team=guardian,tag=!T101] run tag @s add warn
execute as @a[team=soul] at @s if entity @a[distance=..9,team=guardian] run tag @s add warn

# 设置可见玩家
bossbar set midsoul:info players @a[tag=!warn,tag=!heed,team=!admin]
bossbar set midsoul:heed players @a[tag=!warn,tag=heed,team=!admin]
bossbar set midsoul:warn players @a[tag=warn,team=!admin]

# 清除标签
tag @a remove heed
tag @a remove warn
tag @a remove T005
tag @a remove T101