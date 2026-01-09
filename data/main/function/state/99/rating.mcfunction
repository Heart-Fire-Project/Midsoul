# 是否新纪录?
execute if score @s exp.temp > @s stat.single_record run tellraw @s [{text:"» ",bold:true,color:"gold"},{translate:"ms.info.new_singal_record",fallback:"新表现分纪录！",bold:false}]

# 计算短期分
scoreboard players operation @s temp = @s stat.rating
scoreboard players operation @s stat.rating -= @s stat.single_record
scoreboard players operation @s stat.rating *= #9 data
scoreboard players operation @s stat.rating /= #10 data
scoreboard players operation @s stat.rating += @s exp.temp
execute if score @s exp.temp <= @s stat.single_record run scoreboard players operation @s stat.rating += @s stat.single_record
execute if score @s exp.temp > @s stat.single_record run scoreboard players operation @s stat.rating += @s exp.temp

# 判定增减
scoreboard players operation @s temp -= @s stat.rating
scoreboard players operation @s temp *= #-1 data
execute if data storage ms:setting {hide_rating:0b} run tellraw @s[scores={stat.rating=..9,temp=1..}] [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{text:"0000",color:"#2A4B5F"},{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(+",color:"green"},{score:{name:"@s",objective:"temp"},color:"green"},{text:")",color:"green"}]
execute if data storage ms:setting {hide_rating:0b} run tellraw @s[scores={temp=1..,stat.rating=10..99}] [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{text:"000",color:"#2A4B5F"},{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(+",color:"green"},{score:{name:"@s",objective:"temp"},color:"green"},{text:")",color:"green"}]
execute if data storage ms:setting {hide_rating:0b} run tellraw @s[scores={temp=1..,stat.rating=100..999}] [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{text:"00",color:"#2A4B5F"},{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(+",color:"green"},{score:{name:"@s",objective:"temp"},color:"green"},{text:")",color:"green"}]
execute if data storage ms:setting {hide_rating:0b} run tellraw @s[scores={temp=1..,stat.rating=1000..9999}] [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{text:"0",color:"#2A4B5F"},{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(+",color:"green"},{score:{name:"@s",objective:"temp"},color:"green"},{text:")",color:"green"}]
execute if data storage ms:setting {hide_rating:0b} run tellraw @s[scores={temp=1..,stat.rating=10000..}] [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(+",color:"green"},{score:{name:"@s",objective:"temp"},color:"green"},{text:")",color:"green"}]
execute if data storage ms:setting {hide_rating:0b} run tellraw @s[scores={temp=0,stat.rating=..9}] [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{text:"0000",color:"#2A4B5F"},{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(±0)",color:"white"}]
execute if data storage ms:setting {hide_rating:0b} run tellraw @s[scores={temp=0,stat.rating=10..99}] [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{text:"000",color:"#2A4B5F"},{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(±0)",color:"white"}]
execute if data storage ms:setting {hide_rating:0b} run tellraw @s[scores={temp=0,stat.rating=100..999}] [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{text:"00",color:"#2A4B5F"},{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(±0)",color:"white"}]
execute if data storage ms:setting {hide_rating:0b} run tellraw @s[scores={temp=0,stat.rating=1000..9999}] [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{text:"0",color:"#2A4B5F"},{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(±0)",color:"white"}]
execute if data storage ms:setting {hide_rating:0b} run tellraw @s[scores={temp=0,stat.rating=10000..}] [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(±0)",color:"white"}]
execute if data storage ms:setting {hide_rating:0b} run tellraw @s[scores={temp=..-1,stat.rating=..9}] [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{text:"0000",color:"#2A4B5F"},{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(",color:"red"},{score:{name:"@s",objective:"temp"},color:"red"},{text:")",color:"red"}]
execute if data storage ms:setting {hide_rating:0b} run tellraw @s[scores={temp=..-1,stat.rating=10..99}] [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{text:"000",color:"#2A4B5F"},{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(",color:"red"},{score:{name:"@s",objective:"temp"},color:"red"},{text:")",color:"red"}]
execute if data storage ms:setting {hide_rating:0b} run tellraw @s[scores={temp=..-1,stat.rating=100..999}] [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{text:"00",color:"#2A4B5F"},{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(",color:"red"},{score:{name:"@s",objective:"temp"},color:"red"},{text:")",color:"red"}]
execute if data storage ms:setting {hide_rating:0b} run tellraw @s[scores={temp=..-1,stat.rating=1000..9999}] [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{text:"0",color:"#2A4B5F"},{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(",color:"red"},{score:{name:"@s",objective:"temp"},color:"red"},{text:")",color:"red"}]
execute if data storage ms:setting {hide_rating:0b} run tellraw @s[scores={temp=..-1,stat.rating=10000..}] [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(",color:"red"},{score:{name:"@s",objective:"temp"},color:"red"},{text:")",color:"red"}]
execute if data storage ms:setting {hide_rating:1b} run tellraw @s [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{text:"---",color:"#2A4B5F"},"- "]

# 应用记录刷新
scoreboard players operation @s stat.single_record > @s exp.temp
scoreboard players operation @s stat.rating_record > @s stat.rating