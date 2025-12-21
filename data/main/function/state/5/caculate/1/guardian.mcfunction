scoreboard players set @s exp.temp 0
tellraw @s [{text:"-------------- ",color:"#7367F0"},{translate:"ms.info.end.11",fallback:"个人表现"}," --------------"]

# 利刃出击
execute unless score @s temp.hit matches -2147483648..2147483647 run scoreboard players set @s temp.hit 0
scoreboard players operation @s temp = @s temp.hit
scoreboard players operation @s temp *= #30 data
scoreboard players add @s[scores={temp.hit=3..}] temp 20
scoreboard players add @s[scores={temp.hit=6..}] temp 35
tellraw @s[scores={temp=..9}] [{translate:"ms.rating.hit",fallback:"利刃出击",color:"#FCEF01"}," | +",{text:"00",color:"#79550E"},{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.hit",name:"@s"}},"×)"]
tellraw @s[scores={temp=10..99}] [{translate:"ms.rating.hit",fallback:"利刃出击",color:"#FCEF01"}," | +",{text:"0",color:"#79550E"},{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.hit",name:"@s"}},"×)"]
tellraw @s[scores={temp=100..}] [{translate:"ms.rating.hit",fallback:"利刃出击",color:"#FCEF01"}," | +",{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.hit",name:"@s"}},"×)"]
scoreboard players operation @s exp.temp += @s temp

# 击倒灵魂
execute unless score @s temp.down matches -2147483648..2147483647 run scoreboard players set @s temp.down 0
scoreboard players operation @s temp = @s temp.down
scoreboard players operation @s temp *= #35 data
scoreboard players add @s[scores={temp.down=2..}] temp 25
scoreboard players add @s[scores={temp.down=4..}] temp 40
tellraw @s[scores={temp=..9}] [{translate:"ms.rating.down",fallback:"击倒灵魂",color:"#E47227"}," | +",{text:"00",color:"#67423B"},{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.down",name:"@s"}},"×)"]
tellraw @s[scores={temp=10..99}] [{translate:"ms.rating.down",fallback:"击倒灵魂",color:"#E47227"}," | +",{text:"0",color:"#67423B"},{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.down",name:"@s"}},"×)"]
tellraw @s[scores={temp.down=2..}] [{translate:"ms.rating.down",fallback:"击倒灵魂",color:"#E47227"}," | +",{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.down",name:"@s"}},"×)"]
scoreboard players operation @s exp.temp += @s temp

# 追灵寻踪
execute unless score @s temp.track matches -2147483648..2147483647 run scoreboard players set @s temp.track 0
scoreboard players operation @s temp = @s temp.track
scoreboard players operation @s temp *= #3 data
scoreboard players operation @s temp /= #2 data
scoreboard players add @s[scores={temp.track=60..}] temp 30
scoreboard players add @s[scores={temp.track=120..}] temp 55
tellraw @s[scores={temp=..9}] [{translate:"ms.rating.track",fallback:"追灵寻踪",color:"#EC7042"}," | +",{text:"00",color:"#6E3A07"},{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.track",name:"@s"}},"s)"]
tellraw @s[scores={temp=10..99}] [{translate:"ms.rating.track",fallback:"追灵寻踪",color:"#EC7042"}," | +",{text:"0",color:"#6E3A07"},{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.track",name:"@s"}},"s)"]
tellraw @s[scores={temp=100..}] [{translate:"ms.rating.track",fallback:"追灵寻踪",color:"#EC7042"}," | +",{score:{objective:"temp",name:"@s"}}," (",{score:{objective:"temp.track",name:"@s"}},"s)"]
scoreboard players operation @s exp.temp += @s temp

# 高压攻势
scoreboard players set @s temp 0
scoreboard players operation @s temp = $guardian_offense data
tellraw @s[scores={temp=..9}] [{translate:"ms.rating.offense",fallback:"高压攻势",color:"#CC4433"}," | +",{text:"00",color:"#71383F"},{score:{objective:"temp",name:"@s"}}]
tellraw @s[scores={temp=10..99}] [{translate:"ms.rating.offense",fallback:"高压攻势",color:"#CC4433"}," | +",{text:"0",color:"#71383F"},{score:{objective:"temp",name:"@s"}}]
tellraw @s[scores={temp=100..}] [{translate:"ms.rating.offense",fallback:"高压攻势",color:"#CC4433"}," | +",{score:{objective:"temp",name:"@s"}}]
scoreboard players operation @s exp.temp += @s temp

# 对局综合
scoreboard players set @s temp 0
scoreboard players operation @s temp = $soul_death data
scoreboard players operation @s temp *= #115 data
execute if score $soul_death data matches 3.. run scoreboard players add @s temp 50
execute if score @s temp matches 626.. run scoreboard players set @s temp 625
execute if score $result data matches 3.. run scoreboard players add @s temp 90
execute if score $result data matches 1..2 run scoreboard players add @s temp 50
execute if score $result data matches 0 run scoreboard players add @s temp 35
execute unless entity @a[team=revive] run scoreboard players add @s temp 70
tellraw @s[scores={temp=..9}] [{translate:"ms.rating.general",fallback:"对局综合",color:"#C6101E"}," | +",{text:"00",color:"#4B0101"},{score:{objective:"temp",name:"@s"}}]
tellraw @s[scores={temp=10..99}] [{translate:"ms.rating.general",fallback:"对局综合",color:"#C6101E"}," | +",{text:"0",color:"#4B0101"},{score:{objective:"temp",name:"@s"}}]
tellraw @s[scores={temp=100..}] [{translate:"ms.rating.general",fallback:"对局综合",color:"#C6101E"}," | +",{score:{objective:"temp",name:"@s"}}]
scoreboard players operation @s exp.temp += @s temp

# 最终得分
execute if score @s exp.temp matches 1200.. run tellraw @s [{translate:"ms.rating.total",fallback:"总计得分",color:"#6F6ED1"}," | ",{score:{objective:"exp.temp",name:"@s"}}," ",{text:"[",color:"#7C67FE"},{text:"E",color:"#8A57FE"},{text:"X",color:"#9050FE"},{text:"+",color:"#A03DFF"},{text:"]",color:"#AE2CFF"}]
execute if score @s exp.temp matches 1000..1199 run tellraw @s [{translate:"ms.rating.total",fallback:"总计得分",color:"#6F6ED1"}," | ",{score:{objective:"exp.temp",name:"@s"}}," ",{text:"[",color:"#778CF7"},{text:"E",color:"#7B7DE2"},{text:"X",color:"#806FCE"},{text:"]",color:"#8364BF"}]
execute if score @s exp.temp matches 880..999 run tellraw @s [{translate:"ms.rating.total",fallback:"总计得分",color:"#6F6ED1"}," | ",{text:"0",color:"#2A2756"},{score:{objective:"exp.temp",name:"@s"}}," ",{text:"[",color:"#FB858A"},{text:"S",color:"#FB8F81"},{text:"+",color:"#FC9D76"},{text:"]",color:"#FCA86D"}]
execute if score @s exp.temp matches 780..879 run tellraw @s [{translate:"ms.rating.total",fallback:"总计得分",color:"#6F6ED1"}," | ",{text:"0",color:"#2A2756"},{score:{objective:"exp.temp",name:"@s"}}," ",{text:"[",color:"#FBAB7E"},{text:"S",color:"#FAB876"},{text:"]",color:"#F8C66D"}]
execute if score @s exp.temp matches 700..779 run tellraw @s [{translate:"ms.rating.total",fallback:"总计得分",color:"#6F6ED1"}," | ",{text:"0",color:"#2A2756"},{score:{objective:"exp.temp",name:"@s"}}," ",{text:"[",color:"#7B57CD"},{text:"A",color:"#8066E2"},{text:"]",color:"#6C5BCE"}]
execute if score @s exp.temp matches 600..699 run tellraw @s [{translate:"ms.rating.total",fallback:"总计得分",color:"#6F6ED1"}," | ",{text:"0",color:"#2A2756"},{score:{objective:"exp.temp",name:"@s"}}," ",{text:"[",color:"#357FFF"},{text:"B",color:"#2898FE"},{text:"]",color:"#3088FF"}]
execute if score @s exp.temp matches 500..599 run tellraw @s [{translate:"ms.rating.total",fallback:"总计得分",color:"#6F6ED1"}," | ",{text:"0",color:"#2A2756"},{score:{objective:"exp.temp",name:"@s"}}," ",{text:"[",color:"#18D950"},{text:"C",color:"#3EDD4E"},{text:"]",color:"#59E04D"}]
execute if score @s exp.temp matches 400..499 run tellraw @s [{translate:"ms.rating.total",fallback:"总计得分",color:"#6F6ED1"}," | ",{text:"0",color:"#2A2756"},{score:{objective:"exp.temp",name:"@s"}}," ",{text:"[",color:"#E9BCAD"},{text:"D",color:"#E4BEBC"},{text:"]",color:"#E0C0C6"}]
execute if score @s exp.temp matches 100..399 run tellraw @s [{translate:"ms.rating.total",fallback:"总计得分",color:"#6F6ED1"}," | ",{text:"0",color:"#2A2756"},{score:{objective:"exp.temp",name:"@s"}}," ",{text:"[",color:"#D0CBC5"},{text:"F",color:"#DDDBD5"},{text:"]",color:"#E4E2DD"}]
execute if score @s exp.temp matches 10..99 run tellraw @s [{translate:"ms.rating.total",fallback:"总计得分",color:"#6F6ED1"}," | ",{text:"00",color:"#2A2756"},{score:{objective:"exp.temp",name:"@s"}}," ",{text:"[",color:"#D0CBC5"},{text:"F",color:"#DDDBD5"},{text:"]",color:"#E4E2DD"}]
execute if score @s exp.temp matches 0..9 run tellraw @s [{translate:"ms.rating.total",fallback:"总计得分",color:"#6F6ED1"}," | ",{text:"000",color:"#2A2756"},{score:{objective:"exp.temp",name:"@s"}}," ",{text:"[",color:"#D0CBC5"},{text:"F",color:"#DDDBD5"},{text:"]",color:"#E4E2DD"}]