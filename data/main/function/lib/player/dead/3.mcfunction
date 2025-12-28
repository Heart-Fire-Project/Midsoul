execute store result score $random temp2 run random value 1..5

execute if score $random temp2 matches 1 run tellraw @a [{text:"» ",color:"red",bold:true},{translate:"ms.info.dead.301",fallback:"%s 已消亡！猫儿这个死掉……",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 2 run tellraw @a [{text:"» ",color:"red",bold:true},{translate:"ms.info.dead.302",fallback:"%s 被 %s 起飞了喵",bold:false,with:[{selector:"@s"},{selector:"@p[team=guardian]"}]}]
execute if score $random temp2 matches 3 run tellraw @a [{text:"» ",color:"red",bold:true},{translate:"ms.info.dead.303",fallback:"正义执行！%s 好似喵",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 4 run tellraw @a [{text:"» ",color:"red",bold:true},{translate:"ms.info.dead.304",fallback:"不要喵，不要再欺负 %s 了喵",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 5 run tellraw @a [{text:"» ",color:"red",bold:true},{translate:"ms.info.dead.305",fallback:"%s 对猫毛过敏",bold:false,with:[{selector:"@s"}]}]