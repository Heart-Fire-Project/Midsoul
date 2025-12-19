# 样式处理
execute if data storage ms:mode {logic:"1"} if score $3_process tick.general matches ..18000 run function main:state/3/bossbar/1/normal with storage ms:map
execute if data storage ms:mode {logic:"1"} if score $3_process tick.general matches 18001 run function main:state/3/bossbar/1/change
execute if data storage ms:mode {logic:"1"} if score $3_process tick.general matches 18001.. run function main:state/3/bossbar/1/emerge

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
bossbar set midsoul:info players @a[tag=!warn,tag=!heed]
bossbar set midsoul:heed players @a[tag=!warn,tag=heed]
bossbar set midsoul:warn players @a[tag=warn]

# 教程
advancement grant @a[tag=heed] only main:tutorial/mechanic/1

# 清除标签
tag @a remove heed
tag @a remove warn
tag @a remove T005
tag @a remove T101