execute store result score $random temp2 run random value 1..5

execute if score $random temp2 matches 1 run tellraw @a [{text:"» ",color:"green",bold:true},{translate:"ms.info.3.revive.101",fallback:"%s 历经沧桑终归来",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 2 run tellraw @a [{text:"» ",color:"green",bold:true},{translate:"ms.info.3.revive.102",fallback:"%s 一瞬思绪回现实",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 3 run tellraw @a [{text:"» ",color:"green",bold:true},{translate:"ms.info.3.revive.103",fallback:"%s 灵力凝聚铸肉身",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 4 run tellraw @a [{text:"» ",color:"green",bold:true},{translate:"ms.info.3.revive.104",fallback:"%s 光芒万丈又得胜",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 5 run tellraw @a [{text:"» ",color:"green",bold:true},{translate:"ms.info.3.revive.105",fallback:"%s 艰苦奋斗终有报",bold:false,with:[{selector:"@s"}]}]