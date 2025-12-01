scoreboard players remove $1_tick tick.general 1

# 计算当前秒数 [不显示毫秒，+1 补位] | tick
function base:caculate/time {unit:"sec",tick:"$1_tick",source:"tick.general"}
scoreboard players add $sec temp2 1

# 设置数值 | tick
execute store result bossbar midsoul:info value run scoreboard players get $1_tick tick.general

# 设置名称 | process
execute if score $1_process tick.general matches 1320..1439 run bossbar set midsoul:info name {translate:"ms.bossbar.1s.admin",fallback:"管理确认 » 预计 %s 秒后开始",with:[{score:{objective:"temp2",name:"$sec"}}]}
execute if score $1_process tick.general matches 1240..1319 run bossbar set midsoul:info name {translate:"ms.bossbar.1s.start",fallback:"执行开场 » 预计 %s 秒后开始",with:[{score:{objective:"temp2",name:"$sec"}}]}
execute if score $1_process tick.general matches 1020..1239 run bossbar set midsoul:info name {translate:"ms.bossbar.1s.role",fallback:"选择阵营 » 预计 %s 秒后开始",with:[{score:{objective:"temp2",name:"$sec"}}]}
execute if score $1_process tick.general matches 960..1019 run bossbar set midsoul:info name {translate:"ms.bossbar.1s.role2",fallback:"分配阵营 » 预计 %s 秒后开始",with:[{score:{objective:"temp2",name:"$sec"}}]}
execute if score $1_process tick.general matches 160..959 run bossbar set midsoul:info name {translate:"ms.bossbar.1s.ability",fallback:"选择能力 » 预计 %s 秒后开始",with:[{score:{objective:"temp2",name:"$sec"}}]}
execute if score $1_process tick.general matches 61..159 run bossbar set midsoul:info name {translate:"ms.bossbar.1s.ability2",fallback:"分配能力 » 预计 %s 秒后开始",with:[{score:{objective:"temp2",name:"$sec"}}]}
execute if score $1_process tick.general matches 1..60 run bossbar set midsoul:info name {translate:"ms.bossbar.1s.end",fallback:"流程结束 » 预计 %s 秒后开始",with:[{score:{objective:"temp2",name:"$sec"}}]}