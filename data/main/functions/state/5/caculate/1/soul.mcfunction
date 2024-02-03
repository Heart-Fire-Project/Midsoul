# [目标]
# 收集 1 碎片   +20pts
# - 单场收集数≥5   +20pts
# - 单场收集数≥7   +45pts
# - 单场收集数≥12   +70pts
# - 单场收集数≥15   +100pts
# - 单场收集数≥20   +150pts
# [逃生]
# 生存 2 秒钟   +1pts
# 生存 1 分钟   +20pts
# 该项单次对局至多获得1000pts(20'00")
# [援助]
# 救助 1 队友   +40pts
# - 单场救助数≥3   +40pts
# - 单场救助数≥5   +70pts
# [无畏] 
# - 在 没有被击中 的情况下复活 +270pts
# - 在 没有进入垂死 的情况下复活 +220pts
# - 在 进入 1~2 次垂死的情况下复活 +160pts
# - 个人复活成功 +120pts
# - 死后阵营获胜 +100pts
# 在仅剩余你 1 人的情况下复活 +80pts

tellraw @s [{"translate":"ms.info.end.11","fallback":"表现得分","color":"#7367F0"},{"text":" » ","bold":true}]

# 目标
scoreboard players operation @s temp = @s stat_temp_collect
scoreboard players operation @s temp *= #20 data
scoreboard players add @s[scores={stat_temp_collect=5..6}] temp 20
scoreboard players add @s[scores={stat_temp_collect=7..11}] temp 45
scoreboard players add @s[scores={stat_temp_collect=12..14}] temp 70
scoreboard players add @s[scores={stat_temp_collect=15..19}] temp 100
scoreboard players add @s[scores={stat_temp_collect=20..}] temp 150
tellraw @s[scores={stat_temp_collect=1..}] [{"translate":"ms.info.end.12s","fallback":"碎片搜集"}," ",{"score":{"objective":"stat_temp_collect","name":"@s"}}," | +",{"score":{"objective":"temp","name":"@s"}}]
scoreboard players operation @s exp_temp += @s temp

# 逃生
scoreboard players operation @s temp = @s stat_temp_play_time
function base:caculate/time {tick:"@s",source_tick:"temp",cacu:"cacu",5:"#5",20:"#20",24:"#24",60:"#60",source_mem:"data",unit:"min"}
scoreboard players operation @s temp = $min cacu
scoreboard players operation @s temp *= #50 data
scoreboard players operation @s cacu = $sec cacu
scoreboard players operation @s cacu /= #2 data
scoreboard players operation @s temp += @s cacu
execute if score @s temp matches 1000.. run scoreboard players set @s temp 1000
execute if score $min cacu matches ..09 if score $sec cacu matches ..09 run tellraw @s[scores={stat_temp_play_time=1..}] [{"translate":"ms.info.end.13s","fallback":"存活时长"}," 0",{"score":{"objective":"cacu","name":"$min"}},":0",{"score":{"objective":"cacu","name":"$sec"}}," | +",{"score":{"objective":"temp","name":"@s"}}]
execute if score $min cacu matches ..09 if score $sec cacu matches 10.. run tellraw @s[scores={stat_temp_play_time=1..}] [{"translate":"ms.info.end.13s","fallback":"存活时长"}," 0",{"score":{"objective":"cacu","name":"$min"}},":",{"score":{"objective":"cacu","name":"$sec"}}," | +",{"score":{"objective":"temp","name":"@s"}}]
execute if score $min cacu matches 10.. if score $sec cacu matches ..09 run tellraw @s[scores={stat_temp_play_time=1..}] [{"translate":"ms.info.end.13s","fallback":"存活时长"}," ",{"score":{"objective":"cacu","name":"$min"}},":0",{"score":{"objective":"cacu","name":"$sec"}}," | +",{"score":{"objective":"temp","name":"@s"}}]
execute if score $min cacu matches 10.. if score $sec cacu matches 10.. run tellraw @s[scores={stat_temp_play_time=1..}] [{"translate":"ms.info.end.13s","fallback":"存活时长"}," ",{"score":{"objective":"cacu","name":"$min"}},":",{"score":{"objective":"cacu","name":"$sec"}}," | +",{"score":{"objective":"temp","name":"@s"}}]
scoreboard players operation @s exp_temp += @s temp

# 援助
scoreboard players operation @s temp = @s stat_temp_heal
scoreboard players operation @s temp *= #40 data
scoreboard players add @s[scores={stat_temp_heal=3..4}] temp 40
scoreboard players add @s[scores={stat_temp_heal=5..}] temp 70
tellraw @s[scores={stat_temp_heal=1..}] [{"translate":"ms.info.end.14s","fallback":"队友救助"}," ",{"score":{"objective":"stat_temp_heal","name":"@s"}}," | +",{"score":{"objective":"temp","name":"@s"}}]
scoreboard players operation @s exp_temp += @s temp

# 无畏
scoreboard players set @s temp 0
execute if score $finish temp matches 1.. run scoreboard players set @a[team=dead] temp 100
scoreboard players set @s[team=finish] temp 120
scoreboard players set @s[team=finish,scores={stat_temp_dying=1..2}] temp 160
execute unless score @s stat_temp_dying matches 1.. run scoreboard players set @s[team=finish] temp 220
scoreboard players set @s[team=finish,tag=no_hit] temp 270
execute if score $finish temp matches 1 run scoreboard players add @s[team=finish] temp 80
tellraw @s[scores={temp=1..}] [{"translate":"ms.info.end.15","fallback":"对局得分"}," | +",{"score":{"objective":"temp","name":"@s"}}]
scoreboard players operation @s exp_temp += @s temp

tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"aqua"}," » ",{"score":{"objective":"exp_temp","name":"@s"}}]