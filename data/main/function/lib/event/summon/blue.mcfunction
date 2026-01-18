# 确认是否是可生成点位
execute as @e[tag=marker_blue] at @s if entity @e[distance=..1,tag=blue] run tag @s add summon_no
execute as @e[tag=marker_blue] at @s unless entity @a[tag=game_player,distance=..1000] run tag @s add summon_no

# 生成新碎片
$execute at @e[tag=marker_blue,tag=!summon_no,sort=random,limit=$(num)] run summon item ~ ~0.2 ~ {Tags:[game_entity,new_blue,blue],Item:{id:"echo_shard",count:1},PickupDelay:32767s,Age:-32768s,NoGravity:1b,Invulnerable:1b}
execute at @e[tag=new_blue] run particle glow ~ ~0.2 ~ 0.2 0.1 0.2 5 15 force @a
team join shard @e[tag=new_blue]
tag @e remove new_blue

# 灵气判定
execute if score $aura_rank data matches 3 run function main:lib/event/aura/3

tag @e remove summon_no