execute if score $mode setting matches 1 run tellraw @a [{text:"\n» ",bold:true,color:"#7367F0"},{translate:"ms.mode.select",fallback:"选定游戏模式",bold:false}," ",{translate:"ms.mode.1",fallback:"灵气碎片",bold:false,color:"aqua"}]
execute if score $mode setting matches 1 run tellraw @a [{text:"» ",bold:true},{translate:"ms.mode.1.desc",fallback:"谋求复活或是伺机猎杀，在弥漫的灵气中上演生死追逐",bold:false}]
execute if score $mode setting matches 1 run data merge storage ms:mode {start:"5",cancel:"4",logic:"1",role:"1",affact_rating:true,affact_exp:true,affact_data:true}

execute if score $mode setting matches 2 run tellraw @a [{text:"\n» ",bold:true,color:"#7367F0"},{translate:"ms.mode.select",fallback:"选定游戏模式",bold:false}," ",{translate:"ms.mode.2",fallback:"针锋奔逃",bold:false,color:"aqua"}]
execute if score $mode setting matches 2 run tellraw @a [{text:"» ",bold:true},{translate:"ms.mode.2.desc",fallback:"浓郁的灵气使传送门得以直接出现，与此同时也有更多守卫者严阵以待",bold:false}]
execute if score $mode setting matches 2 run tellraw @a [{text:"  ✕ ",color:"gray"},{translate:"ms.mode.nostat",fallback:"该模式不计算经验值，亦不计入统计数据"}]
execute if score $mode setting matches 2 run data merge storage ms:mode {start:"2",cancel:"1",logic:"1",role:"1",affact_rating:false,affact_exp:false,affact_data:false}