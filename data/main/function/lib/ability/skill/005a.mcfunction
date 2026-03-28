# 首次触发 / 再次触发时的放置锚点
playsound entity.illusioner.prepare_mirror player @a[distance=0.001..]
playsound entity.illusioner.prepare_mirror player @s 0 1000000 0 500000
summon marker ~ ~0.2 ~ {Tags:[S005m,S005n,S005,game_entity]}
scoreboard players operation @e[tag=S005n] entity_id = @s entity_id
tp @n[tag=S005n] @s
tag @e remove S005n