# 依旧受文本套组影响
execute unless score @s extra.text matches 1..3 run function main:lib/player/dead/0
execute if score @s extra.text matches 1 run function main:lib/player/dead/1
execute if score @s extra.text matches 2 run function main:lib/player/dead/2
execute if score @s extra.text matches 3 run function main:lib/player/dead/3

# 由于队伍会使信息内玩家名变色，后置处理
execute run particle sculk_soul ~ ~1 ~ 0.2 0.1 0.2 0.3 512 force @a
team join dead @s
gamemode spectator @s
playsound entity.wither.hurt player @a 0 1000000 0 120000 0.7
kill @e[tag=gold,limit=1]
effect clear @s

# 判定：灵魂消亡时
execute as @a[team=soul,scores={talent_1=3,state=0}] run function main:state/3/ability/talent/003f
execute as @a[team=soul,scores={talent_2=3,state=0}] run function main:state/3/ability/talent/003f

# 恢复玩家属性
attribute @s movement_speed base set 0.1
attribute @s sneaking_speed base set 0.3
attribute @s water_movement_efficiency base set 0.0
attribute @s scale base set 1.0
attribute @s gravity base set 0.08
attribute @s jump_strength base set 0.42

# 统计数据
scoreboard players add @a[team=guardian] stat.kill 1
scoreboard players add @s stat.death 1
scoreboard players add $soul_death data 1

# 即时表现分
execute if score $soul_death data matches ..5 run tellraw @a[team=guardian,scores={setting.instant_rating=1}] [{text:" +115 | ",color:"#C6101E"},{translate:"ms.rating.dead",fallback:"灵魂消亡"}]
execute if score $soul_death data matches 3 run tellraw @a[team=guardian,scores={setting.instant_rating=1}] [{text:" +50 | ",color:"#C6101E"},{translate:"ms.rating.dead",fallback:"灵魂消亡"}," ×3"]