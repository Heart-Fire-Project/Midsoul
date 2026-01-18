scoreboard players set @s temp 10
execute if score $muiti_guardian state matches 1 run function main:lib/rating/1/guardian/multiple
tellraw @s [{text:" +",color:"#FCEF01"},{score:{name:"@s",objective:"temp"}}," | ",{translate:"ms.rating.hit",fallback:"破魂斩击"}]

scoreboard players set @s temp 30
execute if score $muiti_guardian state matches 1 run function main:lib/rating/1/guardian/multiple
tellraw @s[scores={temp.hit=5}] [{text:" +",color:"#FCEF01"},{score:{name:"@s",objective:"temp"}}," | ",{translate:"ms.rating.hit",fallback:"破魂斩击"}," ×5"]

scoreboard players set @s temp 50
execute if score $muiti_guardian state matches 1 run function main:lib/rating/1/guardian/multiple
tellraw @s[scores={temp.hit=12}] [{text:" +",color:"#FCEF01"},{score:{name:"@s",objective:"temp"}}," | ",{translate:"ms.rating.hit",fallback:"破魂斩击"}," ×12"]