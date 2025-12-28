execute store result score $random temp2 run random value 1..3

execute if score $random temp2 matches 1 run tellraw @a [{text:"» ",color:"gold",bold:true},{translate:"ms.info.down.301",fallback:"%s 陷入垂死状态，一盏灵魂之灯已经出现……猫儿这个睡着",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 2 run tellraw @a [{text:"» ",color:"gold",bold:true},{translate:"ms.info.down.302",fallback:"%s 被逮住了喵",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 3 run tellraw @a [{text:"» ",color:"gold",bold:true},{translate:"ms.info.down.303",fallback:"救命啊喵！谁快来救救 %s 喵！",bold:false,with:[{selector:"@s"}]}]