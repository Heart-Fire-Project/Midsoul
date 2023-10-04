# 添加基础 tag
tag @s add opening

# 根据情况判断收集类型
execute unless score @s sneak_time matches 1.. run tag @s remove opening
execute at @s unless entity @e[tag=gray,distance=..1] run tag @s remove opening

# 教程
execute as @s[tag=!opening,tag=!near_chest_tr] at @s if entity @e[tag=gray,distance=..1] run function base:tutorial/near_chest

# 收集提示
execute as @s[tag=!opening] at @s if entity @e[tag=gray,distance=..1] run tag @s add chest_hint
execute as @s[tag=chest_hint] run title @s actionbar [{"translate":"ms.hint.chest","fallback": "长按 [%s] 以开启","with":[{"keybind":"key.sneak"}],"color": "gray"}]
execute as @s[tag=chest_hint] at @s unless entity @e[tag=gray,distance=..1] run title @s actionbar ""
execute as @s[tag=chest_hint] at @s unless entity @e[tag=gray,distance=..1] run tag @s remove chest_hint

# 分数为 时间*200
execute if entity @s[tag=!opening] run scoreboard players reset @s countdown
execute if entity @s[tag=opening] unless score @s countdown matches 0..800 run scoreboard players set @s countdown -10
execute if entity @s[tag=opening] if score @s countdown matches -10..800 run scoreboard players operation @s countdown += $collect_speed data

# 若本次完成开启
execute if entity @s[tag=opening,scores={countdown=801..}] run tag @s add open_finish
execute if entity @s[tag=open_finish] at @s at @e[distance=..1,tag=gray] run particle happy_villager ~ ~0.2 ~ 0.2 0.1 0.2 5 15 force @a
execute if entity @s[tag=open_finish] at @s as @e[distance=..1,tag=gray] run playsound block.chest.open ambient @a ~ ~ ~
execute if entity @s[tag=open_finish] at @s as @e[distance=..1,tag=gray] run kill @s
execute if entity @s[tag=open_finish] run function game:state/3/chest_open_protect

# 天赋影响
tag @s remove open_finish

# 每次循环后
scoreboard players remove @s[scores={sneak_time=1..}] sneak_time 1