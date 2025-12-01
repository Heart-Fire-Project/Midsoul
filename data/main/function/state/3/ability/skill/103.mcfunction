title @s[scores={setting.ability_status=2}] actionbar [{translate:"ms.skill.active",fallback:"技能施放",color:"red"}," » ",{translate:"ms.skill.103",fallback:"唤灵留迹"}]
playsound block.bell.resonate player @s 0 1000000 0 120000
particle end_rod ~ ~0.3 ~ 0.2 0.1 0.2 0.2 64 force @a
scoreboard players add @s temp.skill 1
tag @s add skill_on

# 选择目标
tag @a[team=soul,scores={state=0},sort=furthest,limit=1] add S103
execute at @a[tag=S103] run particle end_rod ~ ~0.3 ~ 0.2 0.1 0.2 0.2 64 force @a
execute at @a[tag=S103] run tag @n[tag=marker_gold,distance=16..] add S103_t
scoreboard players set @a[tag=S103] skill.103 40000
tp @s @e[tag=S103_t,limit=1]

# 给予效果
effect give @s speed 20 0
effect give @a[tag=S103] glowing 5 0

# 去除 tag
tag @e remove S103
tag @e remove S103_t

# 设置计时
scoreboard players set @s tick.skill -40000