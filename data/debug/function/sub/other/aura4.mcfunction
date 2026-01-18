# 强制灵气满溢
tellraw @a [{text:"» ",bold:true,color:"#A7C2F8"},{translate:"ms.info.force_aura4",fallback:"%s 已强制触发灵气满溢",with:[{selector:"@s"}],bold:false}]

scoreboard players set $3_process tick.general 11999