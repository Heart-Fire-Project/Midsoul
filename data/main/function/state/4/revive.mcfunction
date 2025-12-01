# 还是受文本套组影响
execute unless score @s extra.text matches 1..3 run function main:lib/player/revive/0
execute if score @s extra.text matches 1 run function main:lib/player/revive/1
execute if score @s extra.text matches 2 run function main:lib/player/revive/2
execute if score @s extra.text matches 3 run function main:lib/player/revive/3

# 由于队伍会使信息内玩家名变色，后置处理
execute at @s run particle firework ~ ~0.4 ~ 0.2 0.1 0.2 0.5 256 force @a
team join revive @s
gamemode spectator @s
playsound block.respawn_anchor.set_spawn player @a 0 1000000 0 120000 0.7
kill @e[tag=gold,limit=1]
effect clear @s

# 恢复玩家属性
attribute @s movement_speed base set 0.1
attribute @s scale base set 1.0
attribute @s gravity base set 0.08
attribute @s jump_strength base set 0.42

# 统计数据
scoreboard players add @s stat.revive 1
scoreboard players add $soul_revive data 1

# 实时表现分
tellraw @s[tag=no_hit,scores={setting.instant_rating=1}] [{text:" +200 | ",color:"#DF6EA1"},{translate:"ms.rating.revive.s",fallback:"完美复活"}]
tellraw @s[scores={temp.dying=0,setting.instant_rating=1},tag=!no_hit] [{text:" +160 | ",color:"#DF6EA1"},{translate:"ms.rating.revive.a",fallback:"不屈复活"}]
tellraw @s[scores={temp.dying=1,setting.instant_rating=1},tag=!no_hit] [{text:" +125 | ",color:"#DF6EA1"},{translate:"ms.rating.revive.b",fallback:"成功复活"}]
tellraw @s[scores={temp.dying=2..,setting.instant_rating=1},tag=!no_hit] [{text:" +100 | ",color:"#DF6EA1"},{translate:"ms.rating.revive.b",fallback:"成功复活"}]