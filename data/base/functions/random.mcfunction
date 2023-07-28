summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["random"],Duration:1}
execute store result score $random data run data get entity @e[tag=random,limit=1] UUID[0]
kill @e[tag=random]
scoreboard players operation $random_max data -= $random_min data
scoreboard players add $random_max data 1
scoreboard players operation $random data %= $random_max data
scoreboard players operation $random data += $random_min data