function base:caculate/time {unit:"sec",tick:"$4_portal",source:"tick.general"}

# 设置进度
execute store result bossbar midsoul:info value run scoreboard players get $4_portal tick.general

# 设置颜色
execute if score $4_finale state matches 1 run bossbar set midsoul:info color pink
execute if score $4_finale state matches 0 run bossbar set midsoul:info color purple

# 设置名称
execute if score $4_finale state matches 0 if score $ms temp2 matches ..09 run bossbar set midsoul:info name [{translate:"ms.bossbar.4.portal",fallback:"传送门 »",color:"#9966CC"}," ",{score:{objective:"temp2",name:"$sec"},color:"#9085C4"},{text:".0",color:"#9085C4"},{score:{objective:"temp2",name:"$ms"},color:"#9085C4"}," ",{translate:"ms.bossbar.4.portal.2",fallback:"« 已开启"}]
execute if score $4_finale state matches 0 if score $ms temp2 matches 10.. run bossbar set midsoul:info name [{translate:"ms.bossbar.4.portal",fallback:"传送门 »",color:"#9966CC"}," ",{score:{objective:"temp2",name:"$sec"},color:"#9085C4"},{text:".",color:"#9085C4"},{score:{objective:"temp2",name:"$ms"},color:"#9085C4"}," ",{translate:"ms.bossbar.4.portal.2",fallback:"« 已开启"}]
execute if score $4_finale state matches 1 if score $ms temp2 matches ..09 run bossbar set midsoul:info name [{translate:"ms.bossbar.4.portal",fallback:"传送门 »",color:"#FF77EE"}," ",{score:{objective:"temp2",name:"$sec"},color:"#FF96F9"},{text:".0",color:"#FF96F9"},{score:{objective:"temp2",name:"$ms"},color:"#FF96F9"}," ",{translate:"ms.bossbar.4.portal.2",fallback:"« 已开启"}]
execute if score $4_finale state matches 1 if score $ms temp2 matches 10.. run bossbar set midsoul:info name [{translate:"ms.bossbar.4.portal",fallback:"传送门 »",color:"#FF77EE"}," ",{score:{objective:"temp2",name:"$sec"},color:"#FF96F9"},{text:".",color:"#FF96F9"},{score:{objective:"temp2",name:"$ms"},color:"#FF96F9"}," ",{translate:"ms.bossbar.4.portal.2",fallback:"« 已开启"}]

# 设置闪烁 - 气息探测失效
execute if score $4_process tick.general matches 10001 run bossbar set midsoul:info visible false
execute if score $4_process tick.general matches 10002 run bossbar set midsoul:info visible true
execute if score $4_process tick.general matches 10003 run bossbar set midsoul:info visible false
execute if score $4_process tick.general matches 10004 run bossbar set midsoul:info visible true
execute if score $4_process tick.general matches 10005 run bossbar set midsoul:info visible false
execute if score $4_process tick.general matches 10006 run bossbar set midsoul:info visible true

# 设置闪烁 - 剩余时间不足
execute if score $4_timeout state matches 0 if score $4_portal tick.general matches 599 run bossbar set midsoul:info visible false
execute if score $4_timeout state matches 0 if score $4_portal tick.general matches 598 run bossbar set midsoul:info visible true
execute if score $4_timeout state matches 0 if score $4_portal tick.general matches 597 run bossbar set midsoul:info visible false
execute if score $4_timeout state matches 0 if score $4_portal tick.general matches 596 run bossbar set midsoul:info visible true
execute if score $4_timeout state matches 0 if score $4_portal tick.general matches 595 run bossbar set midsoul:info visible false
execute if score $4_timeout state matches 0 if score $4_portal tick.general matches 594 run bossbar set midsoul:info visible true
execute if score $4_timeout state matches 0 if score $4_portal tick.general matches 593 run bossbar set midsoul:info visible false
execute if score $4_timeout state matches 0 if score $4_portal tick.general matches 592 run bossbar set midsoul:info visible true