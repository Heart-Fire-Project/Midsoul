# 受击
# 无伤判定失效
tag @s remove no_hit

# 判定是否消亡
execute store result score @s temp run data get entity @s Health 1000000
execute if score @s temp matches ..0 run tag @s add soul_down

# 还有救
effect give @s[tag=!soul_down] speed 7 4
scoreboard players set @s[tag=!soul_down] tick.invincible 140

# 没救了
execute at @s[tag=soul_down] run summon marker ~ ~0.2 ~ {Tags:[death_mark,game_entity]}
tp @n[tag=death_mark] @s

# 教程
advancement grant @s only main:tutorial/player/1