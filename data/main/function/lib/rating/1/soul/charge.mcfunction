scoreboard players operation @s temp.charge += @s temp
scoreboard players operation @s temp2 = @s temp.charge
scoreboard players operation @s temp2 /= #1000 data

tellraw @s[scores={temp2=40..},tag=!charge_rating_1] [{text:" +60 | ",color:"#DF6EA1"},{translate:"ms.rating.charge",fallback:"注能启门"}," 40%"]
tellraw @s[scores={temp2=80..},tag=!charge_rating_2] [{text:" +70 | ",color:"#DF6EA1"},{translate:"ms.rating.charge",fallback:"注能启门"}," 80%"]
tellraw @s[scores={temp2=120..},tag=!charge_rating_3] [{text:" +40 | ",color:"#DF6EA1"},{translate:"ms.rating.charge",fallback:"注能启门"}," 120%"]

tag @a[scores={temp2=40..},tag=!charge_rating_1] add charge_rating_1
tag @a[scores={temp2=80..},tag=!charge_rating_2] add charge_rating_2
tag @a[scores={temp2=120..},tag=!charge_rating_3] add charge_rating_3