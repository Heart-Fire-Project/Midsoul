execute store result score $random temp2 run random value 1..5

execute if score $random temp2 matches 1 run tellraw @a [{text:"» ",color:"red",bold:true},{translate:"ms.info.3.dead.101",fallback:"%s 化作尘烟，再无法重塑",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 2 run tellraw @a [{text:"» ",color:"red",bold:true},{translate:"ms.info.3.dead.102",fallback:"%s 沉湎幻象，无以达终点",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 3 run tellraw @a [{text:"» ",color:"red",bold:true},{translate:"ms.info.3.dead.103",fallback:"%s 深度睡眠，却永不苏醒",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 4 run tellraw @a [{text:"» ",color:"red",bold:true},{translate:"ms.info.3.dead.104",fallback:"%s 魂魄消散，已万劫不复",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 5 run tellraw @a [{text:"» ",color:"red",bold:true},{translate:"ms.info.3.dead.105",fallback:"%s 再无躯壳，也再无复活",bold:false,with:[{selector:"@s"}]}]