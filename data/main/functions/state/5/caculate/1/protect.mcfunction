# [凶残] 
# 攻击 1 次   +20pts
# 击倒 1 次   +40pts
#  - 单场击倒≥3   +75pts
#  - 单场击倒≥7   +150pts
# [摧毁]
# 使用 1 次灵魂宝物箱   +50pts
# 使用了 ≥3 次灵魂宝物箱   +50pts
# [寻踪]
# 持续位于灵魂方身后 1 秒钟   +3pts
# [狩猎]
# 有 1/2/3/4/5/6/7+ 灵魂死亡, 获得100/210/330/450/540/600pts
# 阵营获胜/大获全胜   +200/400pts

tellraw @s [{"translate":"ms.info.end.11","fallback":"表现得分","color":"#7367F0"},{"text":" » ","bold":true}]

# 凶残
scoreboard players operation @s temp = @s stat_temp_hit
scoreboard players operation @s temp *= #20 data
scoreboard players operation @s cacu = @s temp
scoreboard players operation @s temp = @s stat_temp_down
scoreboard players operation @s temp *= #40 data
scoreboard players add @s[scores={stat_temp_down=3..6}] temp 75
scoreboard players add @s[scores={stat_temp_down=7..}] temp 150
scoreboard players operation @s temp += @s cacu
tellraw @s[scores={stat_temp_hit=1..}] [{"translate":"ms.info.end.12p","fallback":"攻击次数"}," ",{"score":{"objective":"stat_temp_hit","name":"@s"}},"(",{"score":{"objective":"stat_temp_down","name":"@s"}},") | +",{"score":{"objective":"temp","name":"@s"}}]
scoreboard players operation @s exp_temp += @s temp

# 摧毁
scoreboard players operation @s temp = @s stat_temp_open
scoreboard players operation @s temp *= #50 data
scoreboard players add @s[scores={stat_temp_open=3..}] temp 50
tellraw @s[scores={stat_temp_open=1..}] [{"translate":"ms.info.end.13p","fallback":"开箱次数"}," ",{"score":{"objective":"stat_temp_open","name":"@s"}}," | +",{"score":{"objective":"temp","name":"@s"}}]
scoreboard players operation @s exp_temp += @s temp

# 寻踪
scoreboard players operation @s temp = @s stat_temp_track_time
scoreboard players operation @s temp *= #3 data
tellraw @s[scores={stat_temp_track_time=1..}] [{"translate":"ms.info.end.14p","fallback":"追踪时长"}," ",{"score":{"objective":"stat_temp_track_time","name":"@s"}},"s | +",{"score":{"objective":"temp","name":"@s"}}]
scoreboard players operation @s exp_temp += @s temp

# 狩猎
scoreboard players set @s temp 0
execute if score $dead temp matches 1 run scoreboard players set @s temp 100
execute if score $dead temp matches 2 run scoreboard players set @s temp 210
execute if score $dead temp matches 3 run scoreboard players set @s temp 330
execute if score $dead temp matches 4 run scoreboard players set @s temp 450
execute if score $dead temp matches 5 run scoreboard players set @s temp 540
execute if score $dead temp matches 6 run scoreboard players set @s temp 600
execute if score $dead temp matches 7.. run scoreboard players set @s temp 650
execute if score $finish temp matches -2..-1 run scoreboard players add @s temp 200
execute if score $finish temp matches ..-3 run scoreboard players add @s temp 400
tellraw @s[scores={temp=1..}] [{"translate":"ms.info.end.15","fallback":"对局得分"}," | +",{"score":{"objective":"temp","name":"@s"}}]
scoreboard players operation @s exp_temp += @s temp

# 总结
execute if score @s exp_temp matches 1250.. run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"red"}," » ",{"score":{"objective":"exp_temp","name":"@s"}}," ",{"text":"[","color":"#7C67FE"},{"text":"E","color":"#8A57FE"},{"text":"X","color":"#9050FE"},{"text":"+","color":"#A03DFF"},{"text":"]","color":"#AE2CFF"}]
execute if score @s exp_temp matches 1000..1249 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"red"}," » ",{"score":{"objective":"exp_temp","name":"@s"}}," ",{"text":"[","color":"#778CF7"},{"text":"E","color":"#7B7DE2"},{"text":"X","color":"#806FCE"},{"text":"]","color":"#8364BF"}]
execute if score @s exp_temp matches 800..999 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"red"}," » ",{"score":{"objective":"exp_temp","name":"@s"}}," ",{"text":"[","color":"#FB858A"},{"text":"S","color":"#FB8F81"},{"text":"+","color":"#FC9D76"},{"text":"]","color":"#FCA86D"}]
execute if score @s exp_temp matches 640..799 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"red"}," » ",{"score":{"objective":"exp_temp","name":"@s"}}," ",{"text":"[","color":"#FBAB7E"},{"text":"S","color":"#FAB876"},{"text":"]","color":"#F8C66D"}]
execute if score @s exp_temp matches 500..639 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"red"}," » ",{"score":{"objective":"exp_temp","name":"@s"}}," ",{"text":"[","color":"#7B57CD"},{"text":"A","color":"#8066E2"},{"text":"]","color":"#6C5BCE"}]
execute if score @s exp_temp matches 380..499 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"red"}," » ",{"score":{"objective":"exp_temp","name":"@s"}}," ",{"text":"[","color":"#357FFF"},{"text":"B","color":"#2898FE"},{"text":"]","color":"#3088FF"}]
execute if score @s exp_temp matches 280..379 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"red"}," » ",{"score":{"objective":"exp_temp","name":"@s"}}," ",{"text":"[","color":"#18D950"},{"text":"C","color":"#3EDD4E"},{"text":"]","color":"#59E04D"}]
execute if score @s exp_temp matches 200..279 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"red"}," » ",{"score":{"objective":"exp_temp","name":"@s"}}," ",{"text":"[","color":"#E9BCAD"},{"text":"D","color":"#E4BEBC"},{"text":"]","color":"#E0C0C6"}]
execute if score @s exp_temp matches ..199 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"red"}," » ",{"score":{"objective":"exp_temp","name":"@s"}}," ",{"text":"[","color":"#D0CBC5"},{"text":"F","color":"#DDDBD5"},{"text":"]","color":"#E4E2DD"}]