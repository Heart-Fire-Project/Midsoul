# 添加基础 tag
tag @s[team=soul] add collecting
tag @s[team=soul] add healing
tag @s add opening

# 判断收集类型
execute unless score @s sneak_time matches 1.. run tag @s remove collecting
execute unless score @s sneak_time matches 1.. run tag @s remove healing
execute unless score @s sneak_time matches 1.. run tag @s remove opening
execute at @s unless entity @e[tag=blue,distance=..1] run tag @s remove collecting
execute at @s unless entity @e[tag=gold,distance=..1] run tag @s remove healing
execute at @s unless entity @e[tag=gray,distance=..1] run tag @s remove opening

# 收集提示
execute as @s[tag=!collecting,team=soul] at @s if entity @e[tag=blue,distance=..1] run tag @s add collect_hint
execute as @s[tag=!healing,team=soul] at @s if entity @e[tag=gold,distance=..1] run tag @s add heal_hint
execute as @s[tag=!opening] at @s if entity @e[tag=gray,distance=..1] run tag @s add chest_hint
execute as @s[tag=collect_hint,tag=!collecting] run title @s actionbar [{"translate":"ms.hint.shard","fallback":"长按 [%s] 以收集","with":[{"keybind":"key.sneak"}],"color":"blue"}]
execute as @s[tag=heal_hint,tag=!healing] run title @s actionbar [{"translate":"ms.hint.lamp","fallback":"长按 [%s] 以点亮","with":[{"keybind":"key.sneak"}],"color":"gold"}]
execute as @s[tag=chest_hint,tag=!opening] run title @s actionbar [{"translate":"ms.hint.chest","fallback":"长按 [%s] 以开启","with":[{"keybind":"key.sneak"}],"color":"gray"}]
execute as @s[tag=collect_hint] at @s unless entity @e[tag=blue,distance=..1] run title @s actionbar ""
execute as @s[tag=heal_hint] at @s unless entity @e[tag=gold,distance=..1] run title @s actionbar ""
execute as @s[tag=chest_hint] at @s unless entity @e[tag=gray,distance=..1] run title @s actionbar ""
execute at @s unless entity @e[tag=blue,distance=..1] run tag @s remove collect_hint
execute at @s unless entity @e[tag=gold,distance=..1] run tag @s remove heal_hint
execute at @s unless entity @e[tag=gray,distance=..1] run tag @s remove chest_hint
tag @s[tag=collecting] remove collect_hint
tag @s[tag=healing] remove heal_hint
tag @s[tag=opening] remove chest_hint

# 填入值为 200*真实时间
execute if entity @s[tag=!healing,tag=!collecting,tag=!opening] run scoreboard players reset @s countdown
execute if entity @s[tag=collecting] unless score @s countdown matches 0..600 run scoreboard players set @s countdown -10
execute if entity @s[tag=collecting] if score @s countdown matches -10..600 run scoreboard players operation @s countdown += $collect_speed data
execute if entity @s[tag=healing] unless score @s countdown matches 0..1000 run scoreboard players set @s countdown -10
execute if entity @s[tag=healing] if score @s countdown matches -10..1000 run scoreboard players operation @s countdown += $collect_speed data
execute if score $mode temp matches 2 if entity @s[tag=healing] if score @s countdown matches -10..1000 run scoreboard players operation @s countdown += $collect_speed data
execute if entity @s[tag=opening] unless score @s countdown matches 0..800 run scoreboard players set @s countdown -10
execute if entity @s[tag=opening] if score @s countdown matches -10..800 run scoreboard players operation @s countdown += $collect_speed data
execute if score $mode temp matches 2 if entity @s[tag=opening] if score @s countdown matches -10..800 run scoreboard players operation @s countdown += $collect_speed data
execute if entity @s[scores={talent_1=1},team=soul,tag=talent_1_on] if score @s countdown matches 0..1000 at @s run function main:state/3/talent/001_b
execute if entity @s[scores={talent_1=7},team=soul] if score @s countdown matches 0..1000 at @s run function main:state/3/talent/007
execute if entity @s[scores={talent_2=1},team=soul,tag=talent_2_on] if score @s countdown matches 0..1000 at @s run function main:state/3/talent/001_b
execute if entity @s[scores={talent_2=7},team=soul] if score @s countdown matches 0..1000 at @s run function main:state/3/talent/007

# 收集完成
execute at @s[tag=collecting,scores={countdown=601..}] as @e[tag=blue,distance=..1] at @s run function main:state/3/collect_shard
execute at @s[tag=healing,scores={countdown=1001..}] as @e[tag=gold,distance=..1] at @s run function main:state/3/collect_lamp
execute at @s[tag=opening,scores={countdown=801..}] as @e[tag=gray,distance=..1] at @s run function main:state/3/collect_chest

# 每次循环都进行
scoreboard players remove @s[scores={sneak_time=1..}] sneak_time 1