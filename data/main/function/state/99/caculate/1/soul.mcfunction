scoreboard players set @s exp.temp 0
tellraw @s [{text:"-------------- ",color:"#7367F0"},{translate:"ms.info.end.11",fallback:"个人表现"}," --------------"]

# 碎片凝淬
execute unless score @s temp.rated_collect matches -2147483648..2147483647 run scoreboard players set @s temp.rated_collect 0
execute unless score @s temp.collect matches -2147483648..2147483647 run scoreboard players set @s temp.collect 0
scoreboard players operation @s temp = @s temp.rated_collect
scoreboard players operation @s temp *= #600 data
execute store result score $goal temp run data get storage ms:map shard_goal
scoreboard players operation @s temp /= $goal temp
execute store result score $bonus_1 temp run data get storage ms:map shard_goal
scoreboard players operation $bonus_1 temp /= #4 data
execute store result score $bonus_2 temp run data get storage ms:map shard_goal
scoreboard players operation $bonus_2 temp *= #2 data
scoreboard players operation $bonus_2 temp /= #5 data
execute if score @s temp.rated_collect >= $bonus_1 temp run scoreboard players add @s temp 30
execute if score @s temp.rated_collect >= $bonus_2 temp run scoreboard players add @s temp 50
scoreboard players operation $value temp = $soul_count data
execute if score $value temp matches ..3 run scoreboard players set $value temp 4
scoreboard players operation @s temp *= $value temp
scoreboard players operation @s temp /= #4 data
tellraw @s[scores={temp=..9}] [{translate:"ms.rating.collect",fallback:"碎片凝淬",color:"#009295"}," | +",{text:"00",color:"#052A32"},{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.collect",name:"@s"}},"×)"]
tellraw @s[scores={temp=10..99}] [{translate:"ms.rating.collect",fallback:"碎片凝淬",color:"#009295"}," | +",{text:"0",color:"#052A32"},{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.collect",name:"@s"}},"×)"]
tellraw @s[scores={temp=100..}] [{translate:"ms.rating.collect",fallback:"碎片凝淬",color:"#009295"}," | +",{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.collect",name:"@s"}},"×)"]
scoreboard players operation @s exp.temp += @s temp

# 魂灵不灭
execute unless score @s temp.time matches -2147483648..2147483647 run scoreboard players set @s temp.time 0
function base:caculate/time {tick:"@s",source:"temp.time",unit:"sec"}
scoreboard players operation @s temp = $sec temp2
scoreboard players operation @s temp /= #2 data
execute if score @s temp matches 300.. run scoreboard players set @s temp 300
scoreboard players set @s[team=revive] temp 300
function base:caculate/time {tick:"@s",source:"temp.time",unit:"min"}
execute if score $sec temp2 matches ..9 run tellraw @s[scores={temp=..9}] [{translate:"ms.rating.survive",fallback:"魂灵不灭",color:"#4B9F5D"}," | +",{text:"00",color:"#486241"},{score:{objective:"temp",name:"@s"}}," (00:0",{score:{objective:"temp2",name:"$sec"}},")"]
execute if score $sec temp2 matches 10.. run tellraw @s[scores={temp=..9}] [{translate:"ms.rating.survive",fallback:"魂灵不灭",color:"#4B9F5D"}," | +",{text:"00",color:"#486241"},{score:{objective:"temp",name:"@s"}}," (00:",{score:{objective:"temp2",name:"$sec"}},")"]
execute if score $sec temp2 matches ..9 run tellraw @s[scores={temp=10..99}] [{translate:"ms.rating.survive",fallback:"魂灵不灭",color:"#4B9F5D"}," | +",{text:"0",color:"#486241"},{score:{objective:"temp",name:"@s"}}," (0",{score:{objective:"temp2",name:"$min"}},":0",{score:{objective:"temp2",name:"$sec"}},")"]
execute if score $sec temp2 matches 10.. run tellraw @s[scores={temp=10..99}] [{translate:"ms.rating.survive",fallback:"魂灵不灭",color:"#4B9F5D"}," | +",{text:"0",color:"#486241"},{score:{objective:"temp",name:"@s"}}," (0",{score:{objective:"temp2",name:"$min"}},":",{score:{objective:"temp2",name:"$sec"}},")"]
execute if score $min temp2 matches ..9 if score $sec temp2 matches ..9 run tellraw @s[scores={temp=100..}] [{translate:"ms.rating.survive",fallback:"魂灵不灭",color:"#4B9F5D"}," | +",{score:{objective:"temp",name:"@s"}}," (0",{score:{objective:"temp2",name:"$min"}},":0",{score:{objective:"temp2",name:"$sec"}},")"]
execute if score $min temp2 matches ..9 if score $sec temp2 matches 10.. run tellraw @s[scores={temp=100..}] [{translate:"ms.rating.survive",fallback:"魂灵不灭",color:"#4B9F5D"}," | +",{score:{objective:"temp",name:"@s"}}," (0",{score:{objective:"temp2",name:"$min"}},":",{score:{objective:"temp2",name:"$sec"}},")"]
execute if score $min temp2 matches 10.. if score $sec temp2 matches ..9 run tellraw @s[scores={temp=100..}] [{translate:"ms.rating.survive",fallback:"魂灵不灭",color:"#4B9F5D"}," | +",{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp2",name:"$min"}},":0",{score:{objective:"temp2",name:"$sec"}},")"]
execute if score $min temp2 matches 10.. if score $sec temp2 matches 10.. run tellraw @s[scores={temp=100..}] [{translate:"ms.rating.survive",fallback:"魂灵不灭",color:"#4B9F5D"}," | +",{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp2",name:"$min"}},":",{score:{objective:"temp2",name:"$sec"}},")"]
scoreboard players operation @s exp.temp += @s temp

# 点灯续航
execute unless score @s temp.heal matches -2147483648..2147483647 run scoreboard players set @s temp.heal 0
scoreboard players operation @s temp = @s temp.heal
scoreboard players operation @s temp *= #50 data
scoreboard players add @s[scores={temp.heal=2..}] temp 30
scoreboard players add @s[scores={temp.heal=4..}] temp 50
tellraw @s[scores={temp=..9}] [{translate:"ms.rating.heal",fallback:"点灯续航",color:"#EEC400"}," | +",{text:"00",color:"#7D623C"},{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.heal",name:"@s"}},"×)"]
tellraw @s[scores={temp=10..99}] [{translate:"ms.rating.heal",fallback:"点灯续航",color:"#EEC400"}," | +",{text:"0",color:"#7D623C"},{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.heal",name:"@s"}},"×)"]
tellraw @s[scores={temp=100..}] [{translate:"ms.rating.heal",fallback:"点灯续航",color:"#EEC400"}," | +",{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.heal",name:"@s"}},"×)"]
scoreboard players operation @s exp.temp += @s temp

# 困缚守卫
execute unless score @s temp.tie matches -2147483648..2147483647 run scoreboard players set @s temp.tie 0
scoreboard players operation @s temp = @s temp.tie
scoreboard players operation @s temp *= #2 data
scoreboard players operation @s temp /= #3 data
scoreboard players add @s[scores={temp.tie=45..}] temp 20
scoreboard players add @s[scores={temp.tie=90..}] temp 40
tellraw @s[scores={temp=..9}] [{translate:"ms.rating.tie",fallback:"困缚守卫",color:"#F2850D"}," | +",{text:"00",color:"#7F4330"},{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.tie",name:"@s"}},"s)"]
tellraw @s[scores={temp=10..99}] [{translate:"ms.rating.tie",fallback:"困缚守卫",color:"#F2850D"}," | +",{text:"0",color:"#7F4330"},{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.tie",name:"@s"}},"s)"]
tellraw @s[scores={temp=100..}] [{translate:"ms.rating.tie",fallback:"困缚守卫",color:"#F2850D"}," | +",{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.tie",name:"@s"}},"s)"]
scoreboard players operation @s exp.temp += @s temp

# 注能启门
execute unless score @s temp.charge matches -2147483648..2147483647 run scoreboard players set @s temp.charge 0
scoreboard players operation @s temp2 = @s temp.charge
scoreboard players operation @s temp2 /= #1000 data
scoreboard players operation @s temp = @s temp2
scoreboard players add @s[scores={temp2=45..}] temp 20
scoreboard players add @s[scores={temp2=90..}] temp 30
scoreboard players set @s[scores={temp=171..}] temp 170
tellraw @s[scores={temp=..9}] [{translate:"ms.rating.charge",fallback:"注能启门",color:"#DF6EA1"}," | +",{text:"00",color:"#704250"},{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp2",name:"@s"}},"%)"]
tellraw @s[scores={temp=10..99}] [{translate:"ms.rating.charge",fallback:"注能启门",color:"#DF6EA1"}," | +",{text:"0",color:"#704250"},{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp2",name:"@s"}},"%)"]
tellraw @s[scores={temp=100..}] [{translate:"ms.rating.charge",fallback:"注能启门",color:"#DF6EA1"}," | +",{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp2",name:"@s"}},"%)"]
scoreboard players operation @s exp.temp += @s temp

# 归魂之旅
execute unless score @s temp.dying matches -2147483648..2147483647 run scoreboard players set @s temp.dying 0
scoreboard players set @s temp 0
scoreboard players add @s[team=revive,tag=no_hit] temp 200
scoreboard players add @s[team=revive,scores={temp.dying=0},tag=!no_hit] temp 180
scoreboard players add @s[team=revive,scores={temp.dying=1},tag=!no_hit] temp 160
scoreboard players add @s[team=revive,scores={temp.dying=2..},tag=!no_hit] temp 140
execute if score $soul_revive data matches 1 run scoreboard players add @s[team=revive] temp 40
execute if score $result data matches 3.. run scoreboard players add @s temp 90
execute if score $result data matches 1..2 run scoreboard players add @s temp 50
execute if score $result data matches 0 run scoreboard players add @s temp 35
tellraw @s[scores={temp=..9}] [{translate:"ms.rating.general.s",fallback:"归魂之旅",color:"#8A6EDB"}," | +",{text:"00",color:"#4F3B7B"},{score:{objective:"temp",name:"@s"}}]
tellraw @s[scores={temp=10..99}] [{translate:"ms.rating.general.s",fallback:"归魂之旅",color:"#8A6EDB"}," | +",{text:"0",color:"#4F3B7B"},{score:{objective:"temp",name:"@s"}}]
tellraw @s[scores={temp=100..}] [{translate:"ms.rating.general.s",fallback:"归魂之旅",color:"#8A6EDB"}," | +",{score:{objective:"temp",name:"@s"}}]
scoreboard players operation @s exp.temp += @s temp

# 最终得�?
tellraw @s[scores={exp.temp=1280..}] [{translate:"ms.rating.total",fallback:"总计得分",color:"#7367F0"}," | ",{score:{objective:"exp.temp",name:"@s"}}," ",{text:"[",color:"#7C67FE"},{text:"E",color:"#8A57FE"},{text:"X",color:"#9050FE"},{text:"+",color:"#A03DFF"},{text:"]",color:"#AE2CFF"}]
tellraw @s[scores={exp.temp=1080..1279}] [{translate:"ms.rating.total",fallback:"总计得分",color:"#7367F0"}," | ",{score:{objective:"exp.temp",name:"@s"}}," ",{text:"[",color:"#778CF7"},{text:"E",color:"#7B7DE2"},{text:"X",color:"#806FCE"},{text:"]",color:"#8364BF"}]
tellraw @s[scores={exp.temp=1000..1079}] [{translate:"ms.rating.total",fallback:"总计得分",color:"#7367F0"}," | ",{score:{objective:"exp.temp",name:"@s"}}," ",{text:"[",color:"#FB858A"},{text:"S",color:"#FB8F81"},{text:"+",color:"#FC9D76"},{text:"]",color:"#FCA86D"}]
tellraw @s[scores={exp.temp=960..999}] [{translate:"ms.rating.total",fallback:"总计得分",color:"#7367F0"}," | ",{text:"0",color:"#2A2756"},{score:{objective:"exp.temp",name:"@s"}}," ",{text:"[",color:"#FB858A"},{text:"S",color:"#FB8F81"},{text:"+",color:"#FC9D76"},{text:"]",color:"#FCA86D"}]
tellraw @s[scores={exp.temp=860..959}] [{translate:"ms.rating.total",fallback:"总计得分",color:"#7367F0"}," | ",{text:"0",color:"#2A2756"},{score:{objective:"exp.temp",name:"@s"}}," ",{text:"[",color:"#FBAB7E"},{text:"S",color:"#FAB876"},{text:"]",color:"#F8C66D"}]
tellraw @s[scores={exp.temp=780..859}] [{translate:"ms.rating.total",fallback:"总计得分",color:"#7367F0"}," | ",{text:"0",color:"#2A2756"},{score:{objective:"exp.temp",name:"@s"}}," ",{text:"[",color:"#7B57CD"},{text:"A",color:"#8066E2"},{text:"]",color:"#6C5BCE"}]
tellraw @s[scores={exp.temp=680..779}] [{translate:"ms.rating.total",fallback:"总计得分",color:"#7367F0"}," | ",{text:"0",color:"#2A2756"},{score:{objective:"exp.temp",name:"@s"}}," ",{text:"[",color:"#357FFF"},{text:"B",color:"#2898FE"},{text:"]",color:"#3088FF"}]
tellraw @s[scores={exp.temp=580..679}] [{translate:"ms.rating.total",fallback:"总计得分",color:"#7367F0"}," | ",{text:"0",color:"#2A2756"},{score:{objective:"exp.temp",name:"@s"}}," ",{text:"[",color:"#18D950"},{text:"C",color:"#3EDD4E"},{text:"]",color:"#59E04D"}]
tellraw @s[scores={exp.temp=480..579}] [{translate:"ms.rating.total",fallback:"总计得分",color:"#7367F0"}," | ",{text:"0",color:"#2A2756"},{score:{objective:"exp.temp",name:"@s"}}," ",{text:"[",color:"#E9BCAD"},{text:"D",color:"#E4BEBC"},{text:"]",color:"#E0C0C6"}]
tellraw @s[scores={exp.temp=100..479}] [{translate:"ms.rating.total",fallback:"总计得分",color:"#7367F0"}," | ",{text:"0",color:"#2A2756"},{score:{objective:"exp.temp",name:"@s"}}," ",{text:"[",color:"#D0CBC5"},{text:"F",color:"#DDDBD5"},{text:"]",color:"#E4E2DD"}]
tellraw @s[scores={exp.temp=10..99}] [{translate:"ms.rating.total",fallback:"总计得分",color:"#7367F0"}," | ",{text:"00",color:"#2A2756"},{score:{objective:"exp.temp",name:"@s"}}," ",{text:"[",color:"#D0CBC5"},{text:"F",color:"#DDDBD5"},{text:"]",color:"#E4E2DD"}]
tellraw @s[scores={exp.temp=0..9}] [{translate:"ms.rating.total",fallback:"总计得分",color:"#7367F0"}," | ",{text:"000",color:"#2A2756"},{score:{objective:"exp.temp",name:"@s"}}," ",{text:"[",color:"#D0CBC5"},{text:"F",color:"#DDDBD5"},{text:"]",color:"#E4E2DD"}]