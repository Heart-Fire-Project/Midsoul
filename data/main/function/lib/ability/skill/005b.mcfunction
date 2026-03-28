# 并非首次触发
playsound entity.illusioner.prepare_blindness player @a[distance=0.001..] ~ ~ ~ 1 1.1
playsound entity.illusioner.prepare_blindness player @s 0 1000000 0 500000 1.1
scoreboard players set @s tick.skill -2400
tag @s add skill_on

# 放置侦测物件
summon marker ~ ~0.2 ~ {Tags:[S005r,S005n,S005,game_entity]}
scoreboard players operation @e[tag=S005n] entity_id = @s entity_id
tp @n[tag=S005n] @s
execute as @n[tag=S005n] at @s run tp @s ~ ~ ~ ~ 0
scoreboard players set @n[tag=S005n] tick.general 25
tag @e remove S005n