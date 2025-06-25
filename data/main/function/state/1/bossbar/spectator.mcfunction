scoreboard players remove $1_tick tick.global 1

# 计算当前秒数 [不显示毫秒，+1 补位] | tick
function base:caculate/time {unit:"sec",tick:"$1_tick",source:"tick.global"}
scoreboard players add $sec temp2 1

# 设置数值 | tick
execute store result bossbar midsoul:info value run scoreboard players get $1_tick tick.global

# 设置名称 | process
execute if score $1_process tick.global matches 1081..1200 run bossbar set midsoul:info name {"translate":"ms.bossbar.s1.admin","fallback":"管理确认中 » 预计 %s 秒后开始","with":[{"score":{"objective":"temp2","name":"$sec"}}]}
execute if score $1_process tick.global matches 1021..1080 run bossbar set midsoul:info name {"translate":"ms.bossbar.s1.start","fallback":"执行开场中 » 预计 %s 秒后开始","with":[{"score":{"objective":"temp2","name":"$sec"}}]}
execute if score $1_process tick.global matches 961..1020 run bossbar set midsoul:info name {"translate":"ms.bossbar.s1.kit","fallback":"分配阵营中 » 预计 %s 秒后开始","with":[{"score":{"objective":"temp2","name":"$sec"}}]}
execute if score $1_process tick.global matches 161..960 run bossbar set midsoul:info name {"translate":"ms.bossbar.s1.choose","fallback":"选择能力中 » 预计 %s 秒后开始","with":[{"score":{"objective":"temp2","name":"$sec"}}]}
execute if score $1_process tick.global matches 61..160 run bossbar set midsoul:info name {"translate":"ms.bossbar.s1.show","fallback":"能力展示中 » 预计 %s 秒后开始","with":[{"score":{"objective":"temp2","name":"$sec"}}]}
execute if score $1_process tick.global matches 1..60 run bossbar set midsoul:info name {"translate":"ms.bossbar.s1.show","fallback":"流程已结束 » 预计 %s 秒后开始","with":[{"score":{"objective":"temp2","name":"$sec"}}]}