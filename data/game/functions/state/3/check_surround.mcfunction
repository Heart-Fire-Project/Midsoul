# 不满足条件即重置
tag @s add collecting
execute unless score @s sneak_time matches 1.. run tag @s remove collecting
execute at @s unless entity @e[tag=blue,distance=..1] run tag @s remove collecting

# 在灵魂碎片周围蹲下
# 分数为 时间*200
execute unless entity @s[tag=collecting] run scoreboard players reset @s countdown
execute if entity @s[tag=collecting] unless score @s countdown matches 0..1000 run scoreboard players set @s countdown -10
execute if entity @s[tag=collecting] if score @s countdown matches -10..1000 run scoreboard players operation @s countdown += $collect_speed data
execute if entity @s[tag=collecting,tag=talent_001_active] if score @s countdown matches 0..1000 at @s run function game:state/3/skill/active/talent_001

# 映射到经验值栏
scoreboard players operation @s temp = @s countdown
scoreboard players set @s[scores={temp=..-10},tag=collecting] temp 0
scoreboard players set @s[scores={temp=1001..},tag=collecting] temp 1000
scoreboard players operation @s temp *= $182 data
scoreboard players operation @s temp /= $1000 data
xp set @s 38 levels
xp set @s[scores={temp=0..60}] 0 points
xp set @s[scores={temp=61..121}] 61 points
xp set @s[scores={temp=122..}] 122 points
scoreboard players operation @s temp %= $61 data
xp add @s[scores={temp=16..31}] 16 points
xp add @s[scores={temp=32..47}] 32 points
xp add @s[scores={temp=48..}] 48 points
scoreboard players operation @s temp %= $16 data
xp add @s[scores={temp=4..7}] 4 points
xp add @s[scores={temp=8..11}] 8 points
xp add @s[scores={temp=12..}] 12 points
scoreboard players operation @s temp %= $4 data
xp add @s[scores={temp=1}] 1 points
xp add @s[scores={temp=2}] 2 points
xp add @s[scores={temp=3}] 3 points
## 临时需要! 记得删!
xp set @s 0 levels

# 若本次完成收集
execute if entity @s[tag=collecting,scores={countdown=1001..}] run tag @s add collect_finish
execute if entity @s[tag=collect_finish] run execute at @s as @e[distance=..1,type=item] run scoreboard players add $shard_collected temp 1
execute if entity @s[tag=collect_finish] run execute at @s as @e[distance=..1,type=item] run particle glow ~ ~0.2 ~ 0.2 0.1 0.2 5 15 force @a
execute if entity @s[tag=collect_finish] run execute at @s as @e[distance=..1,type=item] run playsound block.respawn_anchor.charge ambient @a ~ ~ ~
execute if entity @s[tag=collect_finish] run execute at @s as @e[distance=..1,type=item] run kill @s
# 天赋影响
execute if entity @s[tag=collect_finish,scores={talent_1=1}] run tag @s add talent_001_active
execute if entity @s[tag=collect_finish,scores={talent_2=1}] run tag @s add talent_001_active
execute as @s[tag=collect_finish,tag=talent_001_active] at @s run function game:state/3/skill/active/talent_001
tag @s remove collect_finish

# 每次循环后
scoreboard players remove @s[scores={sneak_time=1..}] sneak_time 1