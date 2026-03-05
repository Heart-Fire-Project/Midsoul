scoreboard players set @s temp 12
execute if score $muiti_guardian state matches 1 run function main:lib/rating/1/guardian/multiple
tellraw @s [{text:" +",color:"#F1C207"},{score:{name:"@s",objective:"temp"}}," | ",{translate:"ms.rating.stun",fallback:"镇压游魂"}]

scoreboard players set @s temp 40
execute if score $muiti_guardian state matches 1 run function main:lib/rating/1/guardian/multiple
tellraw @s[scores={temp.stun=3}] [{text:" +",color:"#F1C207"},{score:{name:"@s",objective:"temp"}}," | ",{translate:"ms.rating.stun",fallback:"镇压游魂"}," ×3"]

scoreboard players set @s temp 70
execute if score $muiti_guardian state matches 1 run function main:lib/rating/1/guardian/multiple
tellraw @s[scores={temp.stun=8}] [{text:" +",color:"#F1C207"},{score:{name:"@s",objective:"temp"}}," | ",{translate:"ms.rating.stun",fallback:"镇压游魂"}," ×8"]