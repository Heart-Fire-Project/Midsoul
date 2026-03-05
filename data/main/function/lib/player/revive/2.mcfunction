execute store result score $random temp2 run random value 1..5

execute if score $random temp2 matches 1 run tellraw @a [{text:"» ",color:"green",bold:true},{translate:"ms.info.revive.201",fallback:"%s 用一句神秘的 ciallo~ 咒语打开了复活的大门",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 2 run tellraw @a [{text:"» ",color:"green",bold:true},{translate:"ms.info.revive.202",fallback:"SCP-74%s %s 的项目等级已调整为 Euclid",bold:false,with:[{score:{name:"@s",objective:"entity_id"}},{selector:"@s"}]}]
execute if score $random temp2 matches 3 run tellraw @a [{text:"» ",color:"green",bold:true},{translate:"ms.info.revive.203",fallback:"邦邦咔邦~ %s 成为了最强的勇者！",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 4 run tellraw @a [{text:"» ",color:"green",bold:true},{translate:"ms.info.revive.204",fallback:"你的巡飞弹对 %s 不起作用了，怎么回事呢？",bold:false,with:[{selector:"@s"}]}]
execute if score $random temp2 matches 5 run tellraw @a [{text:"» ",color:"green",bold:true},{translate:"ms.info.revive.205",fallback:"%s 历经枯痛沉沦，终从深渊唤回残梦一痕",bold:false,with:[{selector:"@s"}]}]