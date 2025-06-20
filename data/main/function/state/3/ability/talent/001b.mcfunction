title @s[scores={setting.ability_actionbar=1..}] actionbar [{"translate":"ms.talent.active","fallback":"天赋触发","color":"aqua"}," » ",{"translate":"ms.talent.001","fallback":"全神贯注"}]
playsound block.beacon.power_select player @s ~ ~ ~ 0.7 2
particle glow ~ ~0.2 ~ 0.2 0.1 0.2 5 15 force @a
tag @s[scores={talent_1=1}] remove talent_1_on
tag @s[scores={talent_2=1}] remove talent_2_on

# 计算并应用效果
scoreboard players operation @s temp2 = $interact_speed setting
scoreboard players operation @s temp2 *= #10 data
scoreboard players operation @s temp += @s temp2