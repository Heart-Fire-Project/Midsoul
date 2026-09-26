# 与瞑视之眼互换位置，并计数 1 次
summon marker ~ ~0.2 ~ {Tags:[S107b,game_entity]}
tp @n[tag=S107b] @s
scoreboard players operation $value temp = @s entity_id
execute as @e[tag=S107] if score @s entity_id = $value temp run tag @s add S107t
tp @s @n[tag=S107t]
tp @n[tag=S107t] @n[tag=S107b]
scoreboard players add @s skill.107 1
kill @e[tag=S107b]

# 特效部分
particle ash ~ ~1 ~ 0.2 0.4 0.2 0.1 92 force @a
execute at @n[tag=S107t] run particle ash ~ ~1 ~ 0.2 0.4 0.2 0.1 92 force @a
playsound entity.creaking.spawn player @a ~ ~ ~ 1 1.2
playsound entity.creaking.spawn player @s 0 1000000 0 120000 1.2
execute at @n[tag=S107t] run playsound entity.creaking.spawn player @a ~ ~ ~ 1 1.2
tag @e remove S107t