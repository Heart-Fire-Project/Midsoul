# 准备追加速度计时
scoreboard players remove @s skill.107s 1
execute as @s[scores={skill.107s=0..}] store result storage ms:temp duration int -0.0005 run scoreboard players get @s tick.skill
execute as @s[scores={skill.107s=0..}] run function main:lib/ability/skill/107c with storage ms:temp