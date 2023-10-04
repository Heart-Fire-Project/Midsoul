damage @s 20
execute store result score @s temp run data get entity @s Health 1000000
execute if score @s temp matches 0 run tag @s add soul_died
effect give @s[tag=!soul_died] speed 7 4 true
execute as @s[tag=soul_died] at @s run summon marker ~ ~0.2 ~ {Tags:[death_mark]}
tag @s remove no_hit
function base:tutorial/got_hit