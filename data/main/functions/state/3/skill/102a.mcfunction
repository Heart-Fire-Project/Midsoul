scoreboard players add @s[scores={skill_102=..4}] skill_102 1

execute if score @s skill_102 matches 1 run particle dust_color_transition 0.3 0.7 1 1 1 1 0 ~ ~0.2 ~ 0.1 0.1 0.1 1 20 force @a
execute if score @s skill_102 matches 2 run particle dust_color_transition 0.3 0.7 1 1 1 1 0 ~ ~0.2 ~ 0.2 0.1 0.2 1 40 force @a
execute if score @s skill_102 matches 3 run particle dust_color_transition 0.3 0.7 1 1 1 1 0 ~ ~0.2 ~ 0.3 0.1 0.3 1 60 force @a
execute if score @s skill_102 matches 4 run particle dust_color_transition 0.3 0.7 1 1 1 1 0 ~ ~0.2 ~ 0.4 0.1 0.4 1 80 force @a
execute if score @s skill_102 matches 5 run particle dust_color_transition 0.3 0.7 1 1 1 1 0 ~ ~0.2 ~ 0.5 0.1 0.5 1 100 force @a

playsound block.end_portal_frame.fill player @s ~ ~ ~
title @s actionbar [{"translate":"ms.skill.102","fallback":"灵力掌控","color":"red"}," ✨ ",{"translate":"ms.skill.stack","fallback":"叠加 %s 层","with":[{"score":{"objective":"skill_102","name":"@s"}}]}]