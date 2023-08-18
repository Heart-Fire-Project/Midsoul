scoreboard players add $skill_102 temp 1

# 粒子效果
execute if score $skill_102 temp matches 1 run particle dust_color_transition 0.3 0.7 1 1 1 1 0 ~ ~0.2 ~ 0.1 0.1 0.1 1 20 force @a
execute if score $skill_102 temp matches 2 run particle dust_color_transition 0.3 0.7 1 1 1 1 0 ~ ~0.2 ~ 0.2 0.1 0.2 1 40 force @a
execute if score $skill_102 temp matches 3 run particle dust_color_transition 0.3 0.7 1 1 1 1 0 ~ ~0.2 ~ 0.3 0.1 0.3 1 60 force @a
execute if score $skill_102 temp matches 4 run particle dust_color_transition 0.3 0.7 1 1 1 1 0 ~ ~0.2 ~ 0.4 0.1 0.4 1 80 force @a
execute if score $skill_102 temp matches 5 run particle dust_color_transition 0.3 0.7 1 1 1 1 0 ~ ~0.2 ~ 0.5 0.1 0.5 1 100 force @a

# 其他提示
playsound block.end_portal_frame.fill player @s ~ ~ ~ 1000000
title @s actionbar {"translate":"ms.skill.102.stack","fallback": "灵力掌控 » 叠加 %s 层","color": "red","with":[{"score":{"objective":"temp","name":"$skill_102"}}]}