# 确认点位使用情况
execute as @e[tag=marker_blue] at @s if entity @e[distance=..1,tag=blue] run tag @s add no_summon

# 生成新碎片
$execute at @e[tag=marker_blue,tag=!no_summon,sort=random,limit=$(num)] run summon item ~ ~0.2 ~ {Tags:[game_entity,new_blue,blue],Item:{id:"echo_shard",count:1},PickupDelay:32767s,Age:-32768s,NoGravity:1b,Invulnerable:1b}
execute at @e[tag=new_blue] run particle glow ~ ~0.2 ~ 0.2 0.1 0.2 5 15 force @a
execute as @e[tag=new_blue] run team join shard @s
execute as @e[tag=new_blue] run tag @s remove new_blue

# 灵气判定
execute if score $aura_rank data matches 3.. as @e[tag=blue] run data modify entity @s Glowing set value 1b

tag @e remove no_summon