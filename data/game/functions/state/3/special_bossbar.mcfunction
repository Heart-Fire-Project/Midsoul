# 计算数值
scoreboard players operation $now_play_time temp = $temp stat_temp_play_time
scoreboard players set $force_end_time temp 19200
execute store result score $force_end_real_time temp run scoreboard players operation $force_end_time temp -= $now_play_time temp

# 设置数值
execute store result bossbar midsoul:warn max run scoreboard players get $force_end_time temp
execute store result bossbar midsoul:warn value run scoreboard players get $force_end_real_time temp

# 设置名称
bossbar set midsoul:warn name [{"translate":"ms.bossbar.3.warn","fallback": "💠 气流紊乱 💠 | 碎片聚集中","color": "red"}]

# 设置显示
tag @a remove bossbar_info
tag @a remove bossbar_heed
tag @a remove bossbar_warn
bossbar set midsoul:warn players @a