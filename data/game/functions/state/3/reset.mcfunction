scoreboard players set $shard_collected temp 0
scoreboard players set $shard_goal temp 0
execute as @e[tag=marker_blue] run scoreboard players add $shard_goal temp 1

# 重置计分板
scoreboard players reset @a countdown
scoreboard players reset @a sneak_time
scoreboard players set @a state 0

# 天赋或技能CD
# 分数为 时间*10
scoreboard players reset * skill_cd
scoreboard players reset * talent_1_cd
scoreboard players reset * talent_2_cd
scoreboard players set @a[team=alive,scores={skill=1}] skill_cd 900
scoreboard players set @a[team=alive,scores={skill=2}] skill_cd 1000
scoreboard players set @a[team=alive,scores={skill=3}] skill_cd 700
scoreboard players set @a[team=protect,scores={skill=1}] skill_cd 700
scoreboard players set @a[team=protect,scores={skill=2}] skill_cd 700
scoreboard players set @a[team=protect,scores={skill=3}] skill_cd 800
scoreboard players set @a[team=alive,scores={talent_1=2}] talent_1_cd 600
scoreboard players set @a[team=protect,scores={talent_1=2}] talent_1_cd 600
scoreboard players set @a[team=protect,scores={talent_1=4}] talent_1_cd 600
scoreboard players set @a[team=alive,scores={talent_2=2}] talent_2_cd 600
scoreboard players set @a[team=protect,scores={talent_2=2}] talent_2_cd 600
scoreboard players set @a[team=protect,scores={talent_2=4}] talent_2_cd 600

# 教程
tellraw @a[team=alive,tag=!soul_tr] [{"text": " » ","bold": true,"color": "aqua"},{"translate":"ms.tutorial.soul.start","fallback": "找到散落在地上的灵魂碎片, 蹲下来收集它们……小心别被逮到了!","bold": false}]
tellraw @a[team=protect,tag=!protect_tr] [{"text": " » ","bold": true,"color": "red"},{"translate":"ms.tutorial.protect.start","fallback": "你跑的比灵魂要快一点, 借用这个优势灭掉他们!","bold": false}]