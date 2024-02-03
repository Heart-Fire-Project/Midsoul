# 受击
advancement revoke @s only main:damage_taken
tag @s remove no_hit
execute store result score @s temp run data get entity @s Health 1000000
execute if score @s temp matches 0 run tag @s add soul_dead
effect give @s[tag=!soul_dead] speed 7 4
execute at @s[tag=soul_dead] run summon marker ~ ~0.2 ~ {Tags:[death_mark,game_entity]}