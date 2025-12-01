execute store result score $random temp2 run random value 1..3

execute if score $random temp2 matches 1 run tellraw @a [{text:"» ",color:"yellow",bold:true},{translate:"ms.info.3.healed.301",fallback:"%s 已脱离垂死状态，猫儿这个好运！",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 2 run tellraw @a [{text:"» ",color:"yellow",bold:true},{translate:"ms.info.3.healed.302",fallback:"%s 可以继续胡闹了喵",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 3 run tellraw @a [{text:"» ",color:"yellow",bold:true},{translate:"ms.info.3.healed.303",fallback:"谢谢喵， %s 取关坏 %s 喵",bold:false,with:[{selector:"@s"},{selector:"@p[team=guardian]"}]}]