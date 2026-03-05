# 受击
# 无伤判定失效
tag @s remove no_hit

# 侦测是否是符合条件的受击者
execute if entity @s[scores={state=0,tick.invincible=0}] on attacker run tag @s add rated_attack

# 还有救
effect give @s[scores={detect.die=0}] speed 7 4
scoreboard players set @s[scores={tick.invincible=..140,detect.die=0}] tick.invincible 140

# 没救了
execute at @s[scores={detect.die=1..}] run summon marker ~ ~0.2 ~ {Tags:[death_mark,game_entity]}
scoreboard players operation @n[tag=death_mark] entity_id = @s entity_id
tp @n[tag=death_mark] @s
scoreboard players set @s[scores={detect.die=1..}] detect.die 0

# 教程
advancement grant @s only main:tutorial/player/1