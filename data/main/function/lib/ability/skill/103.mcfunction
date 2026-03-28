title @s[scores={setting.ability_status=2}] actionbar [{translate:"ms.skill.active",fallback:"技能施放",color:"red"}," » ",{translate:"ms.skill.103",fallback:"唤灵留迹"}]
playsound block.bell.resonate player @a[distance=0.001..] ~ ~ ~ 1 1.5
playsound block.bell.resonate player @s 0 1000000 0 120000 1.5
particle end_rod ~ ~1 ~ 0.2 0.5 0.2 0.2 64 force @a
scoreboard players add @s temp.skill 1
tag @s add skill_on

# 选择目标 Ⅰ | 选择符合条件的目标玩家
scoreboard players reset @a[team=soul,scores={state=0}] temp
execute as @a[team=soul,scores={state=0}] at @s if entity @e[tag=marker_blue,distance=..28] run scoreboard players set @s temp 1
execute as @a[team=soul,scores={state=0}] at @s if entity @e[tag=marker_gold,distance=..28] run scoreboard players set @s temp 1
tag @a[team=soul,scores={state=0,temp=1},sort=furthest,limit=1] add S103

# 选择目标 Ⅱ | 选择用作保底的目标玩家
execute unless entity @e[tag=S103] run tag @a[team=soul,scores={state=0},sort=furthest,limit=1] add S103
execute at @a[tag=S103] run particle end_rod ~ ~0.3 ~ 0.2 0.1 0.2 0.2 64 force @a
execute at @a[tag=S103] run playsound block.bell.resonate player @a ~ ~ ~ 1 2
scoreboard players set @a[tag=S103] skill.103 40000

# 选择目标 Ⅲ | 选择符合条件的传送点位
execute at @a[tag=S103] run tag @n[tag=marker_gold,distance=14..] add S103t
execute at @a[tag=S103] run tag @n[tag=marker_blue,distance=14..] add S103t
execute at @a[tag=S103] run tag @e[tag=S103t,limit=1,sort=furthest] remove S103t

# 选择目标 Ⅳ | 选择用作保底的传送点位
execute unless entity @e[tag=S103t] at @a[tag=S103] run tag @e[tag=marker_gold,distance=..14,limit=1,sort=furthest] add S103t
tp @s @e[tag=S103t,limit=1]

# 给予效果
effect give @s speed 20 0
effect give @a[tag=S103] glowing 5 0

# 去除 tag
tag @e remove S103
tag @e remove S103t

# 设置计时
scoreboard players set @s tick.skill -40000