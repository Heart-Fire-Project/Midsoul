# 进行计算
scoreboard players operation $3_playing countdown = $play_time temp
scoreboard players operation $3_playing countdown -= #25200 data
scoreboard players operation $3_playing countdown *= #-1 data
function base:caculate/time {tick:"$3_playing",source_tick:"countdown",cacu:"cacu",5:"#5",20:"#20",24:"#24",60:"#60",source_mem:"data",unit:"sec"}

# 设置 Bossbar 值
execute store result bossbar midsoul:warn value run scoreboard players get $3_playing countdown
scoreboard players operation $3_playing countdown = $sec cacu

# 设置 Bossbar 名称
bossbar set midsoul:warn name {"translate":"ms.bossbar.3.special","fallback":"💠 灵气满溢 💠 | 传送门将在 %s 秒后开启","color":"red","with":[{"score":{"objective":"countdown","name":"$3_playing"},"color":"#E80505"}]}

# 该状态下持续伤害翻倍
tag @a[team=protect] add double_damage