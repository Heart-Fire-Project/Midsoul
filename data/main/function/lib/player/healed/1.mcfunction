execute store result score $random temp2 run random value 1..3

execute if score $random temp2 matches 1 run tellraw @a [{text:"» ",color:"yellow",bold:true},{translate:"ms.info.healed.101",fallback:"%s 已遵循指引，寻得归途",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 2 run tellraw @a [{text:"» ",color:"yellow",bold:true},{translate:"ms.info.healed.102",fallback:"灵气凝结，%s 重归战场",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 3 run tellraw @a [{text:"» ",color:"yellow",bold:true},{translate:"ms.info.healed.103",fallback:"%s 拨开了眼前迷雾，光明又至",bold:false,with:[{selector:"@s"}]}]