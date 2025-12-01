execute store result score $random temp2 run random value 1..5

execute if score $random temp2 matches 1 run tellraw @a [{text:"» ",color:"green",bold:true},{translate:"ms.info.3.revive.301",fallback:"%s 已复活！猫儿这个开心~",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 2 run tellraw @a [{text:"» ",color:"green",bold:true},{translate:"ms.info.3.revive.302",fallback:"%s 打赢复活赛了喵",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 3 run tellraw @a [{text:"» ",color:"green",bold:true},{translate:"ms.info.3.revive.303",fallback:"EZ 喵，%s 先走一步了喵",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 4 run tellraw @a [{text:"» ",color:"green",bold:true},{translate:"ms.info.3.revive.304",fallback:"%s 可爱喵，关注 %s 谢谢喵",bold:false,with:[{selector:"@s"},{selector:"@s"}]}]
execute if score $random temp2 matches 5 run tellraw @a [{text:"» ",color:"green",bold:true},{translate:"ms.info.3.revive.305",fallback:"%s 给大家加油了喵，一定要复活喵",bold:false,with:[{selector:"@s"}]}]