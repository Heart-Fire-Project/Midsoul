# 出击 | 注意被强制擦刀的场合
# 确认是否是有效击中
execute unless entity @p[tag=rated_victim] run tag @s add striked
tag @p[tag=rated_victim] remove rated_victim

# 进入擦刀状态
scoreboard players set @s tick.general 14000
scoreboard players set @s state 1
function main:state/3/player/effect
tag @s[tag=!striked] add hit_soul

# 判定：进入擦刀状态时
execute as @s[scores={talent_1=3}] run function main:state/3/ability/talent/103
execute as @s[scores={talent_2=3}] run function main:state/3/ability/talent/103
scoreboard players set @s[scores={talent_1=4}] tick.talent_1 180000
scoreboard players set @s[scores={talent_2=4}] tick.talent_2 180000

# 实时表现分
scoreboard players add @s[tag=!striked] temp.hit 1
tellraw @s[tag=!striked,scores={setting.instant_rating=1}] [{text:" +20 | ",color:"#FCEF01"},{translate:"ms.rating.hit",fallback:"利刃出击"}]
tellraw @s[tag=!striked,scores={setting.instant_rating=1,temp.hit=3}] [{text:" +15 | ",color:"#FCEF01"},{translate:"ms.rating.hit",fallback:"利刃出击"}," ×3"]
tellraw @s[tag=!striked,scores={setting.instant_rating=1,temp.hit=6}] [{text:" +25 | ",color:"#FCEF01"},{translate:"ms.rating.hit",fallback:"利刃出击"}," ×6"]

# 进度
execute if score @s tick.off_ground matches 20.. run advancement grant @s only main:hidden/3

# 教程
advancement grant @s[tag=!striked] only main:tutorial/player/2