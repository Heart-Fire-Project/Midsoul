function base:caculate/time {unit:"sec",tick:"$4_portal",source:"tick.general"}

# 设置进度
execute store result bossbar midsoul:info value run scoreboard players get $4_portal tick.general
execute store result bossbar midsoul:heed value run scoreboard players get $4_portal tick.general
execute store result bossbar midsoul:warn value run scoreboard players get $4_portal tick.general

# 设置名称
execute if score $ms temp2 matches ..09 run bossbar set midsoul:info name [{translate:"ms.bossbar.4.portal",fallback:"传送门 »",color:"aqua"}," ",{score:{objective:"temp2",name:"$sec"},color:"#50A7D9"},{text:".0",color:"#50A7D9"},{score:{objective:"temp2",name:"$ms"},color:"#50A7D9"}," ",{translate:"ms.bossbar.4.portal.1",fallback:"« 已出现"}]
execute if score $ms temp2 matches 10.. run bossbar set midsoul:info name [{translate:"ms.bossbar.4.portal",fallback:"传送门 »",color:"aqua"}," ",{score:{objective:"temp2",name:"$sec"},color:"#50A7D9"},{text:".",color:"#50A7D9"},{score:{objective:"temp2",name:"$ms"},color:"#50A7D9"}," ",{translate:"ms.bossbar.4.portal.1",fallback:"« 已出现"}]
execute if score $ms temp2 matches ..09 run bossbar set midsoul:heed name [{translate:"ms.bossbar.4.portal",fallback:"传送门 »",color:"yellow"}," ",{score:{objective:"temp2",name:"$sec"},color:"gold"},{text:".0",color:"gold"},{score:{objective:"temp2",name:"$ms"},color:"gold"}," ",{translate:"ms.bossbar.4.portal.1",fallback:"« 已出现"}]
execute if score $ms temp2 matches 10.. run bossbar set midsoul:heed name [{translate:"ms.bossbar.4.portal",fallback:"传送门 »",color:"yellow"}," ",{score:{objective:"temp2",name:"$sec"},color:"gold"},{text:".",color:"gold"},{score:{objective:"temp2",name:"$ms"},color:"gold"}," ",{translate:"ms.bossbar.4.portal.1",fallback:"« 已出现"}]
execute if score $ms temp2 matches ..09 run bossbar set midsoul:warn name [{translate:"ms.bossbar.4.portal",fallback:"传送门 »",color:"red"}," ",{score:{objective:"temp2",name:"$sec"},color:"#E80505"},{text:".0",color:"#E80505"},{score:{objective:"temp2",name:"$ms"},color:"#E80505"}," ",{translate:"ms.bossbar.4.portal.1",fallback:"« 已出现"}]
execute if score $ms temp2 matches 10.. run bossbar set midsoul:warn name [{translate:"ms.bossbar.4.portal",fallback:"传送门 »",color:"red"}," ",{score:{objective:"temp2",name:"$sec"},color:"#E80505"},{text:".",color:"#E80505"},{score:{objective:"temp2",name:"$ms"},color:"#E80505"}," ",{translate:"ms.bossbar.4.portal.1",fallback:"« 已出现"}]

# 依旧闪烁
execute if score $4_process tick.general matches 2 run bossbar set midsoul:info name ""
execute if score $4_process tick.general matches 4 run bossbar set midsoul:info name ""
execute if score $4_process tick.general matches 6 run bossbar set midsoul:info name ""
execute if score $4_process tick.general matches 2 run bossbar set midsoul:heed name ""
execute if score $4_process tick.general matches 4 run bossbar set midsoul:heed name ""
execute if score $4_process tick.general matches 6 run bossbar set midsoul:info name ""
execute if score $4_process tick.general matches 2 run bossbar set midsoul:warn name ""
execute if score $4_process tick.general matches 4 run bossbar set midsoul:warn name ""
execute if score $4_process tick.general matches 6 run bossbar set midsoul:info name ""

# 设置范围
function main:lib/action/bossbar