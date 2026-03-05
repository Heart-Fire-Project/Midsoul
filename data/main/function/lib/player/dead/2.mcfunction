execute store result score $random temp2 run random value 1..5

execute if score $random temp2 matches 1 run tellraw @a [{text:"» ",color:"red",bold:true},{translate:"ms.info.dead.201",fallback:"%s 被 %s 拖入了万丈深渊，永不复回  %s",bold:false,with:[{selector:"@s"},{selector:"@p[team=guardian]"},{translate:"ms.info.dead.201.sub",fallback:"最终击杀！",bold:true,color:"aqua"}]}]
execute if score $random temp2 matches 2 run tellraw @a [{text:"» ",color:"red",bold:true},{translate:"ms.info.dead.202",fallback:"%s 未能在第 3 日达成绩效要求",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 3 run tellraw @a [{text:"» ",color:"red",bold:true},{translate:"ms.info.dead.203",fallback:"没有人把 %s 从虫墙里拉出来，厨圣啊！",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 4 run tellraw @a [{text:"» ",color:"red",bold:true},{translate:"ms.info.dead.204",fallback:"维什戴尔一炮就把 %s 发射到了因非冰原",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 5 run tellraw @a [{text:"» ",color:"red",bold:true},{translate:"ms.info.dead.205",fallback:"%s 和卡拉彼丘一起似了喵",bold:false,with:[{selector:"@s"}]}]