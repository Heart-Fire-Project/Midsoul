execute store result score $random temp2 run random value 1..3

execute if score $random temp2 matches 1 run tellraw @a [{text:"» ",color:"gold",bold:true},{translate:"ms.info.down.201",fallback:"众神之父赐予 %s 重伤倒地",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 2 run tellraw @a [{text:"» ",color:"gold",bold:true},{translate:"ms.info.down.202",fallback:"%s 被正在 APPROOOAAACHIIING 的 %s 用阎魔刀击倒了",bold:false,with:[{selector:"@s"},{selector:"@p[team=guardian]"}]}]
execute if score $random temp2 matches 3 run tellraw @a [{text:"» ",color:"gold",bold:true},{translate:"ms.info.down.203",fallback:"%s 因给三国杀打好评而被击倒",bold:false,with:[{selector:"@s"}]}]