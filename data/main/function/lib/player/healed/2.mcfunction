execute store result score $random temp2 run random value 1..3

execute if score $random temp2 matches 1 run tellraw @a [{text:"» ",color:"yellow",bold:true},{translate:"ms.info.3.healed.201",fallback:"%s 正在杀出冥界",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 2 run tellraw @a [{text:"» ",color:"yellow",bold:true},{translate:"ms.info.3.healed.202",fallback:"* %s 充满了决心",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 3 run tellraw @a [{text:"» ",color:"yellow",bold:true},{translate:"ms.info.3.healed.203",fallback:"协议三，保护 %s ！",bold:false,with:[{selector:"@s"}]}]