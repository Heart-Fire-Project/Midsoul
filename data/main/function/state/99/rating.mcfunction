# 是否新纪录?
execute if score @s exp.temp > @s stat.single_record run tellraw @s [{text:"» ",bold:true,color:"gold"},{translate:"ms.info.new_singal_record",fallback:"新表现分纪录！",bold:false}]
scoreboard players operation @s stat.single_record > @s exp.temp

# 计算短期分
scoreboard players operation $temp temp = @s stat.rating
scoreboard players operation @s stat.rating *= #9 data
scoreboard players operation @s stat.rating /= #10 data
scoreboard players operation @s stat.rating += @s exp.temp
scoreboard players operation $temp temp -= @s stat.rating
scoreboard players operation $temp temp *= #-1 data
execute if score $temp temp matches 1.. if score @s stat.rating matches ..9 run tellraw @s [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{text:"000",color:"#2A4B5F"},{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(+",color:"green"},{score:{name:"$temp",objective:"temp"},color:"green"},{text:")",color:"green"}]
execute if score $temp temp matches 1.. if score @s stat.rating matches 10..99 run tellraw @s [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{text:"00",color:"#2A4B5F"},{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(+",color:"green"},{score:{name:"$temp",objective:"temp"},color:"green"},{text:")",color:"green"}]
execute if score $temp temp matches 1.. if score @s stat.rating matches 100..999 run tellraw @s [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{text:"0",color:"#2A4B5F"},{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(+",color:"green"},{score:{name:"$temp",objective:"temp"},color:"green"},{text:")",color:"green"}]
execute if score $temp temp matches 1.. if score @s stat.rating matches 1000.. run tellraw @s [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(+",color:"green"},{score:{name:"$temp",objective:"temp"},color:"green"},{text:")",color:"green"}]
execute if score $temp temp matches 0 if score @s stat.rating matches ..9 run tellraw @s [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{text:"000",color:"#2A4B5F"},{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(±0)",color:"white"}]
execute if score $temp temp matches 0 if score @s stat.rating matches 10..99 run tellraw @s [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{text:"00",color:"#2A4B5F"},{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(±0)",color:"white"}]
execute if score $temp temp matches 0 if score @s stat.rating matches 100..999 run tellraw @s [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{text:"0",color:"#2A4B5F"},{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(±0)",color:"white"}]
execute if score $temp temp matches 0 if score @s stat.rating matches 1000.. run tellraw @s [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(±0)",color:"white"}]
execute if score $temp temp matches ..-1 if score @s stat.rating matches ..9 run tellraw @s [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{text:"000",color:"#2A4B5F"},{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(",color:"red"},{score:{name:"$temp",objective:"temp"},color:"red"},{text:")",color:"red"}]
execute if score $temp temp matches ..-1 if score @s stat.rating matches 10..99 run tellraw @s [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{text:"00",color:"#2A4B5F"},{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(",color:"red"},{score:{name:"$temp",objective:"temp"},color:"red"},{text:")",color:"red"}]
execute if score $temp temp matches ..-1 if score @s stat.rating matches 100..999 run tellraw @s [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{text:"0",color:"#2A4B5F"},{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(",color:"red"},{score:{name:"$temp",objective:"temp"},color:"red"},{text:")",color:"red"}]
execute if score $temp temp matches ..-1 if score @s stat.rating matches 1000.. run tellraw @s [{translate:"ms.info.end.rating",fallback:"短期评分",color:"#7BBBC8"}," | ",{score:{objective:"stat.rating",name:"@s"}}," ",{text:"(",color:"red"},{score:{name:"$temp",objective:"temp"},color:"red"},{text:")",color:"red"}]

# 检查是否刷记录
scoreboard players operation @s stat.rating_record > @s stat.rating