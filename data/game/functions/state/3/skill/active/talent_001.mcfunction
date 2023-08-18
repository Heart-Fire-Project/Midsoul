title @s actionbar [{"translate":"ms.talent.active","fallback":"天赋触发","color": "aqua"}," » ",{"translate":"ms.talent.001","fallback":"全神贯注"}]

# 分情况触发
effect give @s[tag=collect_finish] speed 3
scoreboard players add @s[tag=!collect_finish] countdown 20
playsound block.beacon.power_select player @s[tag=!collect_finish] ~ ~ ~ 1000000 2
execute if entity @s[tag=!collect_finish] run particle glow ~ ~0.2 ~ 0.2 0.1 0.2 5 15 force @a
tag @s[tag=!collect_finish] remove talent_001_active

execute if entity @s[tag=!talent_tr] run function base:totorial/talent