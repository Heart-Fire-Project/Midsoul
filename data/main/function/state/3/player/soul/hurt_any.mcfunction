# 受击 - 全部伤害类型
# 无伤判定失效
tag @s remove no_hit

# 没救了
execute at @s[scores={detect.die=1..}] run summon marker ~ ~0.2 ~ {Tags:[death_mark,game_entity]}
scoreboard players operation @n[tag=death_mark] entity_id = @s entity_id
tp @n[tag=death_mark] @s
scoreboard players set @s[scores={detect.die=1..}] detect.die 0