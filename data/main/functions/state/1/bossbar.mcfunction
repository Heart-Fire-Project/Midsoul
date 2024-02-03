# 计算秒数
function base:caculate/time {tick:"$1_ticking",source_tick:"countdown",cacu:"cacu",5:"#5",20:"#20",24:"#24",60:"#60",source_mem:"data",unit:"sec"}
scoreboard players operation $1_starting temp = $sec cacu

execute store result bossbar midsoul:info value run scoreboard players get $1_ticking countdown
execute if score $1_ticking countdown matches 261..400 run bossbar set midsoul:info name {"translate":"ms.bossbar.1.admin","fallback":"等待管理确认 » %s 秒后开始","with":[{"score":{"objective":"temp","name":"$1_starting"}}]}
execute if score $1_ticking countdown matches 221..260 run bossbar set midsoul:info name {"translate":"ms.bossbar.1.start","fallback":"正在执行开场 » %s 秒后开始","with":[{"score":{"objective":"temp","name":"$1_starting"}}]}
execute if score $1_ticking countdown matches 121..220 run bossbar set midsoul:info name {"translate":"ms.bossbar.1.kit","fallback":"正在分配职业 » %s 秒后开始","with":[{"score":{"objective":"temp","name":"$1_starting"}}]}
execute if score $1_ticking countdown matches 051..120 run bossbar set midsoul:info name {"translate":"ms.bossbar.1.ability","fallback":"正在分配能力 » %s 秒后开始","with":[{"score":{"objective":"temp","name":"$1_starting"}}]}
execute if score $1_ticking countdown matches 000..050 run bossbar set midsoul:info name {"translate":"ms.bossbar.1.ready","fallback":"初始流程结束 » %s 秒后开始","with":[{"score":{"objective":"temp","name":"$1_starting"}}]}