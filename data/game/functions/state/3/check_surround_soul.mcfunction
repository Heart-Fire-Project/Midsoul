# 添加基础 tag
tag @s add collecting
tag @s add healing
tag @s add opening

# 根据情况判断收集类型
execute unless score @s sneak_time matches 1.. run tag @s remove collecting
execute unless score @s sneak_time matches 1.. run tag @s remove healing
execute unless score @s sneak_time matches 1.. run tag @s remove opening
execute at @s unless entity @e[tag=blue,distance=..1] run tag @s remove collecting
execute at @s unless entity @e[tag=gold,distance=..1] run tag @s remove healing
execute at @s unless entity @e[tag=gray,distance=..1] run tag @s remove opening

# 教程
execute as @s[tag=!opening,tag=!near_chest_tr] at @s if entity @e[tag=gray,distance=..1] run function base:tutorial/near_chest

# 收集提示
execute as @s[tag=!collecting] at @s if entity @e[tag=blue,distance=..1] run tag @s add collect_hint
execute as @s[tag=!healing] at @s if entity @e[tag=gold,distance=..1] run tag @s add heal_hint
execute as @s[tag=!opening] at @s if entity @e[tag=gray,distance=..1] run tag @s add chest_hint
execute as @s[tag=collect_hint] run title @s actionbar [{"translate":"ms.hint.shard","fallback": "长按 [%s] 以收集","with":[{"keybind":"key.sneak"}],"color": "blue"}]
execute as @s[tag=heal_hint] run title @s actionbar [{"translate":"ms.hint.light","fallback": "长按 [%s] 以点亮","with":[{"keybind":"key.sneak"}],"color": "gold"}]
execute as @s[tag=chest_hint] run title @s actionbar [{"translate":"ms.hint.chest","fallback": "长按 [%s] 以开启","with":[{"keybind":"key.sneak"}],"color": "yellow"}]
execute as @s[tag=collect_hint] at @s unless entity @e[tag=blue,distance=..1] run title @s actionbar ""
execute as @s[tag=heal_hint] at @s unless entity @e[tag=gold,distance=..1] run title @s actionbar ""
execute as @s[tag=chest_hint] at @s unless entity @e[tag=gray,distance=..1] run title @s actionbar ""
execute as @s[tag=collect_hint] at @s unless entity @e[tag=blue,distance=..1] run tag @s remove collect_hint
execute as @s[tag=heal_hint] at @s unless entity @e[tag=gold,distance=..1] run tag @s remove heal_hint
execute as @s[tag=chest_hint] at @s unless entity @e[tag=gray,distance=..1] run tag @s remove chest_hint

# 分数为 时间*200
execute if entity @s[tag=!healing,tag=!collecting,tag=!opening] run scoreboard players reset @s countdown
execute if entity @s[tag=collecting] unless score @s countdown matches 0..600 run scoreboard players set @s countdown -10
execute if entity @s[tag=collecting] if score @s countdown matches -10..600 run scoreboard players operation @s countdown += $collect_speed data
execute if entity @s[tag=collecting,tag=talent_001_active] if score @s countdown matches 0..1000 at @s run function game:state/3/skill/talent_001
execute if entity @s[tag=healing] unless score @s countdown matches 0..1000 run scoreboard players set @s countdown -10
execute if entity @s[tag=healing] if score @s countdown matches -10..1000 run scoreboard players operation @s countdown += $collect_speed data
execute if entity @s[tag=opening] unless score @s countdown matches 0..800 run scoreboard players set @s countdown -10
execute if entity @s[tag=opening] if score @s countdown matches -10..800 run scoreboard players operation @s countdown += $collect_speed data

# 若本次完成收集
execute if entity @s[tag=collecting,scores={countdown=601..}] run tag @s add collect_finish
execute if entity @s[tag=collect_finish] as @s run scoreboard players add @s stat_temp_collect 1
execute if entity @s[tag=collect_finish] at @s as @e[distance=..1,tag=blue] run scoreboard players add $shard_collected temp 1
execute if entity @s[tag=collect_finish] at @s at @e[distance=..1,tag=blue] run particle glow ~ ~0.2 ~ 0.2 0.1 0.2 5 15 force @a
execute if entity @s[tag=collect_finish] at @s as @e[distance=..1,tag=blue] run playsound block.respawn_anchor.charge ambient @a ~ ~ ~
execute if entity @s[tag=collect_finish] at @s as @e[distance=..1,tag=blue] run kill @s
execute if entity @s[tag=collect_finish] run function game:state/3/map_variable
execute if entity @s[tag=collect_finish] run function game:state/3/map_stage

# 若本次完成救治
execute if entity @s[tag=healing,scores={countdown=1001..}] run tag @s add heal_finish
execute if entity @s[tag=heal_finish] as @s run scoreboard players add @s stat_temp_heal 1
execute if score $state data matches 3 if entity @s[tag=heal_finish] as @r[team=alive,scores={state=1}] at @s run function game:state/3/soul_heal
execute if score $state data matches 4 if entity @s[tag=heal_finish] as @r[team=alive,scores={state=1}] at @s run function game:state/4/soul_heal
execute if entity @s[tag=heal_finish] at @s at @e[distance=..1,tag=gold] run particle wax_on ~ ~0.5 ~ 0.25 0.3 0.25 5 32 force @a
execute if entity @s[tag=heal_finish] at @s as @e[distance=..1,tag=gold] run playsound item.trident.return ambient @a ~ ~ ~
execute if entity @s[tag=heal_finish] at @s as @e[distance=..1,tag=gold] run kill @s

# 若本次完成开启
execute if entity @s[tag=opening,scores={countdown=801..}] run tag @s add open_finish
execute if entity @s[tag=open_finish] as @s run scoreboard players add @s stat_temp_open 1
execute if entity @s[tag=open_finish] at @s at @e[distance=..1,tag=gray] run particle happy_villager ~ ~0.2 ~ 0.2 0.1 0.2 5 15 force @a
execute if entity @s[tag=open_finish] at @s as @e[distance=..1,tag=gray] run playsound block.chest.open ambient @a ~ ~ ~
execute if entity @s[tag=open_finish] at @s as @e[distance=..1,tag=gray] run kill @s
execute if entity @s[tag=open_finish] run function game:state/3/chest_open_soul

# 天赋影响
execute if entity @s[tag=collect_finish,scores={talent_1=1}] run tag @s add talent_001_active
execute if entity @s[tag=collect_finish,scores={talent_2=1}] run tag @s add talent_001_active
execute as @s[tag=collect_finish,tag=talent_001_active] at @s run function game:state/3/skill/talent_001
execute if entity @s[tag=collect_finish,scores={talent_1=4}] run tag @s add talent_004_active
execute if entity @s[tag=collect_finish,scores={talent_2=4}] run tag @s add talent_004_active
execute as @s[tag=collect_finish,tag=talent_004_active,scores={health=..19}] at @s run function game:state/3/skill/talent_004_a
execute if entity @a[tag=collect_finish] if entity @a[tag=skill_102_active] as @a[tag=skill_102_active] at @s run function game:state/3/skill/skill_102_c
execute if entity @a[tag=heal_finish] as @a[team=protect,scores={talent_1=2,talent_1_cd=..0}] at @s run function game:state/3/skill/talent_102
execute if entity @a[tag=heal_finish] as @a[team=protect,scores={talent_2=2,talent_2_cd=..0}] at @s run function game:state/3/skill/talent_102
tag @s remove collect_finish
tag @s remove heal_finish
tag @s remove open_finish

# 每次循环后
scoreboard players remove @s[scores={sneak_time=1..}] sneak_time 1