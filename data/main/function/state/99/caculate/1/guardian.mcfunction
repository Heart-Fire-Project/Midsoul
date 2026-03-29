scoreboard players set @s exp.temp 0
tellraw @s [{text:"-------------- ",color:"#7367F0"},{translate:"ms.rating.title",fallback:"个人表现"}," --------------"]

# 破魂斩击
execute unless score @s temp.hit matches -2147483648..2147483647 run scoreboard players set @s temp.hit 0
scoreboard players operation @s temp = @s temp.hit
scoreboard players operation @s temp *= #10 data
scoreboard players add @s[scores={temp.hit=5..}] temp 30
scoreboard players add @s[scores={temp.hit=12..}] temp 50
execute if score $muiti_guardian state matches 1 run function main:lib/rating/1/guardian/multiple
tellraw @s[scores={temp=..9}] [{translate:"ms.rating.hit",fallback:"破魂斩击",color:"#FCEF01"}," | +",{text:"00",color:"#666107"},{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.hit",name:"@s"}},"×)"]
tellraw @s[scores={temp=10..99}] [{translate:"ms.rating.hit",fallback:"破魂斩击",color:"#FCEF01"}," | +",{text:"0",color:"#666107"},{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.hit",name:"@s"}},"×)"]
tellraw @s[scores={temp=100..}] [{translate:"ms.rating.hit",fallback:"破魂斩击",color:"#FCEF01"}," | +",{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.hit",name:"@s"}},"×)"]
scoreboard players operation @s exp.temp += @s temp

# 镇压游魂
execute unless score @s temp.stun matches -2147483648..2147483647 run scoreboard players set @s temp.stun 0
scoreboard players operation @s temp = @s temp.stun
scoreboard players operation @s temp *= #12 data
scoreboard players add @s[scores={temp.stun=3..}] temp 40
scoreboard players add @s[scores={temp.stun=8..}] temp 70
execute if score $muiti_guardian state matches 1 run function main:lib/rating/1/guardian/multiple
tellraw @s[scores={temp=..9}] [{translate:"ms.rating.stun",fallback:"镇压游魂",color:"#F1C207"}," | +",{text:"00",color:"#806705"},{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.stun",name:"@s"}},"×)"]
tellraw @s[scores={temp=10..99}] [{translate:"ms.rating.stun",fallback:"镇压游魂",color:"#F1C207"}," | +",{text:"0",color:"#806705"},{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.stun",name:"@s"}},"×)"]
tellraw @s[scores={temp=100..}] [{translate:"ms.rating.stun",fallback:"镇压游魂",color:"#F1C207"}," | +",{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.stun",name:"@s"}},"×)"]
scoreboard players operation @s exp.temp += @s temp

# 追灵寻踪
execute unless score @s temp.track matches -2147483648..2147483647 run scoreboard players set @s temp.track 0
scoreboard players operation @s temp = @s temp.track
scoreboard players operation @s temp *= #4 data
scoreboard players operation @s temp /= #5 data
scoreboard players add @s[scores={temp.track=60..}] temp 32
scoreboard players add @s[scores={temp.track=150..}] temp 48
scoreboard players set @s[scores={temp=281..}] temp 280
tellraw @s[scores={temp=..9}] [{translate:"ms.rating.track",fallback:"追灵寻踪",color:"#E6960D"}," | +",{text:"00",color:"#754E09"},{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.track",name:"@s"}},"s)"]
tellraw @s[scores={temp=10..99}] [{translate:"ms.rating.track",fallback:"追灵寻踪",color:"#E6960D"}," | +",{text:"0",color:"#754E09"},{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.track",name:"@s"}},"s)"]
tellraw @s[scores={temp=100..}] [{translate:"ms.rating.track",fallback:"追灵寻踪",color:"#E6960D"}," | +",{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.track",name:"@s"}},"s)"]
scoreboard players operation @s exp.temp += @s temp

# 夺宝破法
execute unless score @s temp.open matches -2147483648..2147483647 run scoreboard players set @s temp.open 0
scoreboard players operation @s temp = @s temp.open
scoreboard players operation @s temp *= #15 data
scoreboard players add @s[scores={temp.open=3..}] temp 30
scoreboard players add @s[scores={temp.open=8..}] temp 60
scoreboard players set @s[scores={temp=241..}] temp 240
tellraw @s[scores={temp=..9}] [{translate:"ms.rating.open",fallback:"夺宝破法",color:"#DC6912"}," | +",{text:"00",color:"#75380A"},{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.open",name:"@s"}},"×)"]
tellraw @s[scores={temp=10..99}] [{translate:"ms.rating.open",fallback:"夺宝破法",color:"#DC6912"}," | +",{text:"0",color:"#75380A"},{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.open",name:"@s"}},"×)"]
tellraw @s[scores={temp=100..}] [{translate:"ms.rating.open",fallback:"夺宝破法",color:"#DC6912"}," | +",{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.open",name:"@s"}},"×)"]
scoreboard players operation @s exp.temp += @s temp

# 锁魂绝杀
scoreboard players set @s temp 0
scoreboard players operation @s temp = $guardian_offense data
tellraw @s[scores={temp=..9}] [{translate:"ms.rating.offense",fallback:"锁魂绝杀",color:"#D13D18"}," | +",{text:"00",color:"#581B0B"},{score:{objective:"temp",name:"@s"}}]
tellraw @s[scores={temp=10..99}] [{translate:"ms.rating.offense",fallback:"锁魂绝杀",color:"#D13D18"}," | +",{text:"0",color:"#581B0B"},{score:{objective:"temp",name:"@s"}}]
tellraw @s[scores={temp=100..}] [{translate:"ms.rating.offense",fallback:"锁魂绝杀",color:"#D13D18"}," | +",{score:{objective:"temp",name:"@s"}}]
scoreboard players operation @s exp.temp += @s temp

# 镇灵功成
scoreboard players set @s temp 0
scoreboard players operation @s temp = $soul_death data
scoreboard players operation @s temp *= #50 data
execute if score $soul_death data matches 3.. run scoreboard players add @s temp 50
execute if score @s temp matches 301.. run scoreboard players set @s temp 300
execute unless entity @a[team=revive] run scoreboard players add @s temp 60
execute if score $result data matches ..-3 run scoreboard players add @s temp 90
execute if score $result data matches -2..-1 run scoreboard players add @s temp 50
execute if score $result data matches 0 run scoreboard players add @s temp 35
tellraw @s[scores={temp=..9}] [{translate:"ms.rating.general.g",fallback:"镇灵功成",color:"#C6101E"}," | +",{text:"00",color:"#3F0509"},{score:{objective:"temp",name:"@s"}}]
tellraw @s[scores={temp=10..99}] [{translate:"ms.rating.general.g",fallback:"镇灵功成",color:"#C6101E"}," | +",{text:"0",color:"#3F0509"},{score:{objective:"temp",name:"@s"}}]
tellraw @s[scores={temp=100..}] [{translate:"ms.rating.general.g",fallback:"镇灵功成",color:"#C6101E"}," | +",{score:{objective:"temp",name:"@s"}}]
scoreboard players operation @s exp.temp += @s temp

# 最终得分
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