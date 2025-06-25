scoreboard players set @s exp.temp 0
tellraw @s [{"text":"-------------- ","color":"#7367F0"},{"translate":"ms.info.end.11","fallback":"个人表现"}," --------------"]

# 碎片收集
execute unless score @s temp.collect matches -2147483648..2147483647 run scoreboard players set @s temp.collect 0
scoreboard players operation @s temp = @s temp.collect
scoreboard players operation @s temp *= #20 data
scoreboard players add @s[scores={temp.collect=6..}] temp 30
scoreboard players add @s[scores={temp.collect=12..}] temp 45
scoreboard players add @s[scores={temp.collect=18..}] temp 75
tellraw @s[scores={temp.collect=0}] [{"translate":"ms.info.end.12s","fallback":"碎片收集","color":"#009295"}," | +",{"text":"00","color":"#052A32"},{"score":{"objective":"temp","name":"@s"}}," (",{"score":{"objective":"temp.collect","name":"@s"}},"×)"]
tellraw @s[scores={temp.collect=1..4}] [{"translate":"ms.info.end.12s","fallback":"碎片收集","color":"#009295"}," | +",{"text":"0","color":"#052A32"},{"score":{"objective":"temp","name":"@s"}}," (",{"score":{"objective":"temp.collect","name":"@s"}},"×)"]
tellraw @s[scores={temp.collect=5..}] [{"translate":"ms.info.end.12s","fallback":"碎片收集","color":"#009295"}," | +",{"score":{"objective":"temp","name":"@s"}}," (",{"score":{"objective":"temp.collect","name":"@s"}},"×)"]
scoreboard players operation @s exp.temp += @s temp

# 存活时长
execute unless score @s temp.time matches -2147483648..2147483647 run scoreboard players set @s temp.time 0
function base:caculate/time {tick:"@s",source:"temp.time",unit:"min"}
scoreboard players operation @s temp = $min temp2
scoreboard players operation @s temp *= #50 data
scoreboard players operation @s temp2 = $sec temp2
scoreboard players operation @s temp2 /= #2 data
scoreboard players operation @s temp += @s temp2
execute if score @s temp matches 500.. run scoreboard players set @s temp 500
execute if score $sec temp2 matches ..9 run tellraw @s[scores={temp.time=..399}] [{"translate":"ms.info.end.13s","fallback":"存活时长","color":"#4B9F5D"}," | +",{"text":"00","color":"#486241"},{"score":{"objective":"temp","name":"@s"}}," (00:0",{"score":{"objective":"temp2","name":"$sec"}},")"]
execute if score $sec temp2 matches 10.. run tellraw @s[scores={temp.time=..399}] [{"translate":"ms.info.end.13s","fallback":"存活时长","color":"#4B9F5D"}," | +",{"text":"00","color":"#486241"},{"score":{"objective":"temp","name":"@s"}}," (00:",{"score":{"objective":"temp2","name":"$sec"}},")"]
execute if score $sec temp2 matches ..9 run tellraw @s[scores={temp.time=400..2399}] [{"translate":"ms.info.end.13s","fallback":"存活时长","color":"#4B9F5D"}," | +",{"text":"0","color":"#486241"},{"score":{"objective":"temp","name":"@s"}}," (0",{"score":{"objective":"temp2","name":"$min"}},":0",{"score":{"objective":"temp2","name":"$sec"}},")"]
execute if score $sec temp2 matches 10.. run tellraw @s[scores={temp.time=400..2399}] [{"translate":"ms.info.end.13s","fallback":"存活时长","color":"#4B9F5D"}," | +",{"text":"0","color":"#486241"},{"score":{"objective":"temp","name":"@s"}}," (0",{"score":{"objective":"temp2","name":"$min"}},":",{"score":{"objective":"temp2","name":"$sec"}},")"]
execute if score $min temp2 matches ..9 if score $sec temp2 matches ..9 run tellraw @s[scores={temp.time=2400..}] [{"translate":"ms.info.end.13s","fallback":"存活时长","color":"#4B9F5D"}," | +",{"score":{"objective":"temp","name":"@s"}}," (0",{"score":{"objective":"temp2","name":"$min"}},":0",{"score":{"objective":"temp2","name":"$sec"}},")"]
execute if score $min temp2 matches ..9 if score $sec temp2 matches 10.. run tellraw @s[scores={temp.time=2400..}] [{"translate":"ms.info.end.13s","fallback":"存活时长","color":"#4B9F5D"}," | +",{"score":{"objective":"temp","name":"@s"}}," (0",{"score":{"objective":"temp2","name":"$min"}},":",{"score":{"objective":"temp2","name":"$sec"}},")"]
execute if score $min temp2 matches 10.. if score $sec temp2 matches ..9 run tellraw @s[scores={temp.time=2400..}] [{"translate":"ms.info.end.13s","fallback":"存活时长","color":"#4B9F5D"}," | +",{"score":{"objective":"temp","name":"@s"}}," (",{"score":{"objective":"temp2","name":"$min"}},":0",{"score":{"objective":"temp2","name":"$sec"}},")"]
execute if score $min temp2 matches 10.. if score $sec temp2 matches 10.. run tellraw @s[scores={temp.time=2400..}] [{"translate":"ms.info.end.13s","fallback":"存活时长","color":"#4B9F5D"}," | +",{"score":{"objective":"temp","name":"@s"}}," (",{"score":{"objective":"temp2","name":"$min"}},":",{"score":{"objective":"temp2","name":"$sec"}},")"]
scoreboard players operation @s exp.temp += @s temp

# 队友救助
execute unless score @s temp.heal matches -2147483648..2147483647 run scoreboard players set @s temp.heal 0
scoreboard players operation @s temp = @s temp.heal
scoreboard players operation @s temp *= #60 data
scoreboard players add @s[scores={temp.heal=3..}] temp 70
scoreboard players add @s[scores={temp.heal=5..}] temp 80
tellraw @s[scores={temp.heal=0}] [{"translate":"ms.info.end.14s","fallback":"队友救助","color":"#EEC400"}," | +",{"text":"00","color":"#7D623C"},{"score":{"objective":"temp","name":"@s"}}," (",{"score":{"objective":"temp.heal","name":"@s"}},"×)"]
tellraw @s[scores={temp.heal=1}] [{"translate":"ms.info.end.14s","fallback":"队友救助","color":"#EEC400"}," | +",{"text":"0","color":"#7D623C"},{"score":{"objective":"temp","name":"@s"}}," (",{"score":{"objective":"temp.heal","name":"@s"}},"×)"]
tellraw @s[scores={temp.heal=2..}] [{"translate":"ms.info.end.14s","fallback":"队友救助","color":"#EEC400"}," | +",{"score":{"objective":"temp","name":"@s"}}," (",{"score":{"objective":"temp.heal","name":"@s"}},"×)"]
scoreboard players operation @s exp.temp += @s temp

# 守卫牵制
execute unless score @s temp.tie matches -2147483648..2147483647 run scoreboard players set @s temp.tie 0
scoreboard players operation @s temp = @s temp.tie
scoreboard players add @s[scores={temp.tie=30..}] temp 25
scoreboard players add @s[scores={temp.tie=60..}] temp 40
scoreboard players add @s[scores={temp.tie=120..}] temp 55
tellraw @s[scores={temp.tie=..9}] [{"translate":"ms.info.end.15s","fallback":"守卫牵制","color":"#F2850D"}," | +",{"text":"00","color":"#7F4330"},{"score":{"objective":"temp","name":"@s"}}," (",{"score":{"objective":"temp.tie","name":"@s"}},"s)"]
tellraw @s[scores={temp.tie=10..59}] [{"translate":"ms.info.end.15s","fallback":"守卫牵制","color":"#F2850D"}," | +",{"text":"0","color":"#7F4330"},{"score":{"objective":"temp","name":"@s"}}," (",{"score":{"objective":"temp.tie","name":"@s"}},"s)"]
tellraw @s[scores={temp.tie=60..}] [{"translate":"ms.info.end.15s","fallback":"守卫牵制","color":"#F2850D"}," | +",{"score":{"objective":"temp","name":"@s"}}," (",{"score":{"objective":"temp.tie","name":"@s"}},"s)"]
scoreboard players operation @s exp.temp += @s temp

# 对局综合
execute unless score @s temp.dying matches -2147483648..2147483647 run scoreboard players set @s temp.dying 0
scoreboard players set @s temp 0
scoreboard players add @s[team=revive,tag=no_hit] temp 240
scoreboard players add @s[team=revive,scores={temp.dying=0},tag=!no_hit] temp 180
scoreboard players add @s[team=revive,scores={temp.dying=1},tag=!no_hit] temp 130
scoreboard players add @s[team=revive,scores={temp.dying=2},tag=!no_hit] temp 90
scoreboard players add @s[team=revive,scores={temp.dying=3..},tag=!no_hit] temp 60
execute if score $result data matches 1.. run scoreboard players add @s temp 60
execute if score $result data matches 0 run scoreboard players add @s temp 20
tellraw @s[scores={temp=..9}] [{"translate":"ms.info.end.16","fallback":"对局综合","color":"#DF6EA1"}," | +",{"text":"00","color":"#8E5164"},{"score":{"objective":"temp","name":"@s"}}]
tellraw @s[scores={temp=10..99}] [{"translate":"ms.info.end.16","fallback":"对局综合","color":"#DF6EA1"}," | +",{"text":"0","color":"#8E5164"},{"score":{"objective":"temp","name":"@s"}}]
tellraw @s[scores={temp=100..}] [{"translate":"ms.info.end.16","fallback":"对局综合","color":"#DF6EA1"}," | +",{"score":{"objective":"temp","name":"@s"}}]
scoreboard players operation @s exp.temp += @s temp

# 最终得分
execute if score @s exp.temp matches 1250.. run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"#6F6ED1"}," | ",{"score":{"objective":"exp.temp","name":"@s"}}," ",{"text":"[","color":"#7C67FE"},{"text":"E","color":"#8A57FE"},{"text":"X","color":"#9050FE"},{"text":"+","color":"#A03DFF"},{"text":"]","color":"#AE2CFF"}]
execute if score @s exp.temp matches 1000..1249 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"#6F6ED1"}," | ",{"score":{"objective":"exp.temp","name":"@s"}}," ",{"text":"[","color":"#778CF7"},{"text":"E","color":"#7B7DE2"},{"text":"X","color":"#806FCE"},{"text":"]","color":"#8364BF"}]
execute if score @s exp.temp matches 800..999 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"#6F6ED1"}," | ",{"text":"0","color":"#2A2756"},{"score":{"objective":"exp.temp","name":"@s"}}," ",{"text":"[","color":"#FB858A"},{"text":"S","color":"#FB8F81"},{"text":"+","color":"#FC9D76"},{"text":"]","color":"#FCA86D"}]
execute if score @s exp.temp matches 640..799 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"#6F6ED1"}," | ",{"text":"0","color":"#2A2756"},{"score":{"objective":"exp.temp","name":"@s"}}," ",{"text":"[","color":"#FBAB7E"},{"text":"S","color":"#FAB876"},{"text":"]","color":"#F8C66D"}]
execute if score @s exp.temp matches 500..639 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"#6F6ED1"}," | ",{"text":"0","color":"#2A2756"},{"score":{"objective":"exp.temp","name":"@s"}}," ",{"text":"[","color":"#7B57CD"},{"text":"A","color":"#8066E2"},{"text":"]","color":"#6C5BCE"}]
execute if score @s exp.temp matches 380..499 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"#6F6ED1"}," | ",{"text":"0","color":"#2A2756"},{"score":{"objective":"exp.temp","name":"@s"}}," ",{"text":"[","color":"#357FFF"},{"text":"B","color":"#2898FE"},{"text":"]","color":"#3088FF"}]
execute if score @s exp.temp matches 280..379 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"#6F6ED1"}," | ",{"text":"0","color":"#2A2756"},{"score":{"objective":"exp.temp","name":"@s"}}," ",{"text":"[","color":"#18D950"},{"text":"C","color":"#3EDD4E"},{"text":"]","color":"#59E04D"}]
execute if score @s exp.temp matches 200..279 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"#6F6ED1"}," | ",{"text":"0","color":"#2A2756"},{"score":{"objective":"exp.temp","name":"@s"}}," ",{"text":"[","color":"#E9BCAD"},{"text":"D","color":"#E4BEBC"},{"text":"]","color":"#E0C0C6"}]
execute if score @s exp.temp matches 100..199 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"#6F6ED1"}," | ",{"text":"0","color":"#2A2756"},{"score":{"objective":"exp.temp","name":"@s"}}," ",{"text":"[","color":"#D0CBC5"},{"text":"F","color":"#DDDBD5"},{"text":"]","color":"#E4E2DD"}]
execute if score @s exp.temp matches 10..99 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"#6F6ED1"}," | ",{"text":"00","color":"#2A2756"},{"score":{"objective":"exp.temp","name":"@s"}}," ",{"text":"[","color":"#D0CBC5"},{"text":"F","color":"#DDDBD5"},{"text":"]","color":"#E4E2DD"}]
execute if score @s exp.temp matches 0..9 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"#6F6ED1"}," | ",{"text":"000","color":"#2A2756"},{"score":{"objective":"exp.temp","name":"@s"}}," ",{"text":"[","color":"#D0CBC5"},{"text":"F","color":"#DDDBD5"},{"text":"]","color":"#E4E2DD"}]