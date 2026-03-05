execute store result score $random temp2 run random value 1..3

execute if score $random temp2 matches 1 run tellraw @a [{text:"» ",color:"gold",bold:true},{translate:"ms.info.stun.101",fallback:"%s 已陨于刀光之下，点燃明灯，为其指引归路",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 2 run tellraw @a [{text:"» ",color:"gold",bold:true},{translate:"ms.info.stun.102",fallback:"%s 已陷入一片虚无，将于顷刻后消散",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 3 run tellraw @a [{text:"» ",color:"gold",bold:true},{translate:"ms.info.stun.103",fallback:"一瞬寒光后，%s 只觉眼前一片黑暗……点燃明灯，将其带回",bold:false,with:[{selector:"@s"}]}]