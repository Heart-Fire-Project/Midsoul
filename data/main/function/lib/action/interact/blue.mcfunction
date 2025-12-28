# 能力
scoreboard players remove @a[tag=interact_fin,tag=!talent_1_on,scores={talent_1=4}] talent.004 1
scoreboard players remove @a[tag=interact_fin,tag=!talent_2_on,scores={talent_2=4}] talent.004 1
execute as @a[tag=interact_fin,tag=!talent_1_on,scores={talent_1=4,talent.004=0}] run function main:lib/ability/talent/004s
execute as @a[tag=interact_fin,tag=!talent_2_on,scores={talent_2=4,talent.004=0}] run function main:lib/ability/talent/004s
execute if entity @a[team=soul,scores={state=1}] as @a[tag=interact_fin,scores={talent_1=6}] at @s run function main:lib/ability/talent/006
execute if entity @a[team=soul,scores={state=1}] as @a[tag=interact_fin,scores={talent_2=6}] at @s run function main:lib/ability/talent/006
execute if entity @s[tag=T107] run function main:lib/ability/talent/107f

# 回响
execute if score $echo data matches 9 run function main:lib/event/summon/blue {num:"1"}