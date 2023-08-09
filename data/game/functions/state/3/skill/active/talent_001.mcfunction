title @s actionbar {"translate":"ms.talent.001active","fallback": "天赋触发 » 全神贯注","color": "aqua"}

# 分情况触发
effect give @s[tag=collect_finish] speed 3
scoreboard players add @s[tag=!collect_finish] countdown 20
tag @s[tag=!collect_finish] remove talent_001_active
execute if entity @s[tag=!collect_finish] run particle glow ~ ~0.2 ~ 0.2 0.1 0.2 5 15 force @a
playsound block.beacon.power_select player @s[tag=!collect_finish] ~ ~ ~ 1000000 2

# 教程
tellraw @s[tag=!talent_tr] [{"text": " » ","bold": true,"color": "aqua"},{"translate":"ms.tutorial.talent","fallback": "天赋会在符合条件时自动开启, 所以你也没必要知道冷却时间……?","bold": false}]
tag @s add talent_tr