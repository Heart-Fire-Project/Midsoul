function debug:sub/custom/read_all
execute if score $map setting matches -1 run function debug:sub/custom/sync {num:"1"}
execute if score $map setting matches -2 run function debug:sub/custom/sync {num:"2"}
execute if score $map setting matches -3 run function debug:sub/custom/sync {num:"3"}
execute if score $map setting matches -4 run function debug:sub/custom/sync {num:"4"}
execute if score $map setting matches -5 run function debug:sub/custom/sync {num:"5"}
execute if score $map setting matches -6 run function debug:sub/custom/sync {num:"6"}
execute if score $map setting matches -7 run function debug:sub/custom/sync {num:"7"}
execute if score $map setting matches -8 run function debug:sub/custom/sync {num:"8"}
execute if score $map setting matches -9 run function debug:sub/custom/sync {num:"9"}

# 显示地图名称&介绍
execute if score $map setting matches ..-1 run tellraw @a [{text:"\n» ",bold:true,color:"#7367F0"},{translate:"ms.map.select",fallback:"选定游戏地图",bold:false}," ",{storage:"ms:temp",nbt:"name",bold:false,color:"aqua"}]

execute if score $map setting matches 0 run tellraw @a [{text:"\n» ",bold:true,color:"#7367F0"},{translate:"ms.map.select",fallback:"选定游戏地图",bold:false}," ",{translate:"ms.map.0",fallback:"随机地图",bold:false,color:"aqua"}]
execute if score $map setting matches 0 run tellraw @a [{text:"» ",bold:true},{translate:"ms.map.0.desc",fallback:"在现有的所有地图中随机选择一张",bold:false}]
execute if score $map setting matches 0 run data merge storage ms:temp {size:0,complex:0}

execute if score $map setting matches 1 run tellraw @a [{text:"\n» ",bold:true,color:"#7367F0"},{translate:"ms.map.select",fallback:"选定游戏地图",bold:false}," ",{translate:"ms.map.1",fallback:"聚光圣殿",bold:false,color:"aqua"}]
execute if score $map setting matches 1 run tellraw @a [{text:"» ",bold:true,color:"gray"},{translate:"ms.map.1.desc",fallback:"匿于峡间的小镇，圣殿在此祝福各位",bold:false}]
execute if score $map setting matches 1 run tellraw @a ["     ◈ ",{translate:"ms.map.source",fallback:"地图原筑"}," | WHLDTITAN ",{text:"[🌐]",click_event:{action:"open_url",url:"https://www.minecraftmaps.com/48784-kannajouka"},color:"aqua"}]
execute if score $map setting matches 1 run data merge storage ms:temp {size:3,complex:2}

execute if score $map setting matches 2 run tellraw @a [{text:"\n» ",bold:true,color:"#7367F0"},{translate:"ms.map.select",fallback:"选定游戏地图",bold:false}," ",{translate:"ms.map.2",fallback:"镇灵塔楼",bold:false,color:"aqua"}]
execute if score $map setting matches 2 run tellraw @a [{text:"» ",bold:true,color:"gray"},{translate:"ms.map.2.desc",fallback:"镇压灵魂之所，复生与焚尽，皆在一念之间",bold:false}]
execute if score $map setting matches 2 run tellraw @a ["     ◈ ",{translate:"ms.map.source",fallback:"地图原筑"}," | Kapanas & oozner ",{text:"[🌐]",click_event:{action:"open_url",url:"https://www.minecraftmaps.com/48643-hide-seek-panda-village"},color:"aqua"}]
execute if score $map setting matches 2 run data merge storage ms:temp {size:2,complex:4}

execute if score $map setting matches 3 run tellraw @a [{text:"\n» ",bold:true,color:"#7367F0"},{translate:"ms.map.select",fallback:"选定游戏地图",bold:false}," ",{translate:"ms.map.3",fallback:"山间湖谷",bold:false,color:"aqua"}]
execute if score $map setting matches 3 run tellraw @a [{text:"» ",bold:true,color:"gray"},{translate:"ms.map.3.desc",fallback:"平静的湖面波澜不起，本该热闹的村庄却也寂静",bold:false}]
execute if score $map setting matches 3 run tellraw @a ["     ◈ ",{translate:"ms.map.source",fallback:"地图原筑"}," | ZachOBuilds ",{text:"[🌐]",click_event:{action:"open_url",url:"https://www.minecraftmaps.com/48285-mountain-lake-village"},color:"aqua"}]
execute if score $map setting matches 3 run data merge storage ms:temp {size:5,complex:3}

execute if score $map setting matches 4 run tellraw @a [{text:"\n» ",bold:true,color:"#7367F0"},{translate:"ms.map.select",fallback:"选定游戏地图",bold:false}," ",{translate:"ms.map.4",fallback:"心火特区",bold:false,color:"aqua"}]
execute if score $map setting matches 4 run tellraw @a [{text:"» ",bold:true,color:"gray"},{translate:"ms.map.4.desc",fallback:"并非由真实故事改编，我的意思是心火没钱买地皮",bold:false}]
execute if score $map setting matches 4 run tellraw @a ["     ◈ ",{translate:"ms.map.builder",fallback:"地图构建"}," | Mol1Sama feat. Roser ",{text:"<",color:"#8080FF"},{text:"O",color:"#8E80FF"},{text:"r",color:"#9C80FF"},{text:"i",color:"#AA80FF"},{text:"g",color:"#B880FF"},{text:"i",color:"#C780FF"},{text:"n",color:"#D580FF"},{text:"a",color:"#E380FF"},{text:"l",color:"#F180FF"},{text:">",color:"#FF80FF"}]
execute if score $map setting matches 4 run data merge storage ms:temp {size:3,complex:3}

# 显示地图大小&复杂
scoreboard players reset $size temp
execute if data storage ms:temp {size:0} run scoreboard players set $size temp 0
execute if data storage ms:temp {size:1} run scoreboard players set $size temp 1
execute if data storage ms:temp {size:2} run scoreboard players set $size temp 2
execute if data storage ms:temp {size:3} run scoreboard players set $size temp 3
execute if data storage ms:temp {size:4} run scoreboard players set $size temp 4
execute if data storage ms:temp {size:5} run scoreboard players set $size temp 5
scoreboard players reset $complex temp
execute if data storage ms:temp {complex:0} run scoreboard players set $complex temp 0
execute if data storage ms:temp {complex:1} run scoreboard players set $complex temp 1
execute if data storage ms:temp {complex:2} run scoreboard players set $complex temp 2
execute if data storage ms:temp {complex:3} run scoreboard players set $complex temp 3
execute if data storage ms:temp {complex:4} run scoreboard players set $complex temp 4
execute if data storage ms:temp {complex:5} run scoreboard players set $complex temp 5

execute if score $size temp matches 1 run tellraw @a ["     ◈ ",{translate:"ms.map.size",fallback:"地图大小"},{text:" | »",color:"aqua"},{text:"»»»»",color:"white"}]
execute if score $size temp matches 2 run tellraw @a ["     ◈ ",{translate:"ms.map.size",fallback:"地图大小"},{text:" | »»",color:"green"},{text:"»»»",color:"white"}]
execute if score $size temp matches 3 run tellraw @a ["     ◈ ",{translate:"ms.map.size",fallback:"地图大小"},{text:" | »»»",color:"yellow"},{text:"»»",color:"white"}]
execute if score $size temp matches 4 run tellraw @a ["     ◈ ",{translate:"ms.map.size",fallback:"地图大小"},{text:" | »»»»",color:"gold"},{text:"»",color:"white"}]
execute if score $size temp matches 5 run tellraw @a ["     ◈ ",{translate:"ms.map.size",fallback:"地图大小"},{text:" | »»»»»",color:"red"},{text:"",color:"white"}]
execute unless score $size temp matches 0..5 run tellraw @a ["     ◈ ",{translate:"ms.map.size",fallback:"地图大小"},{text:" | »»»»»",color:"gray"},{text:"",color:"white"}]
execute if score $complex temp matches 1 run tellraw @a ["     ◈ ",{translate:"ms.map.complex",fallback:"复杂程度"},{text:" | »",color:"aqua"},{text:"»»»»",color:"white"}]
execute if score $complex temp matches 2 run tellraw @a ["     ◈ ",{translate:"ms.map.complex",fallback:"复杂程度"},{text:" | »»",color:"green"},{text:"»»»",color:"white"}]
execute if score $complex temp matches 3 run tellraw @a ["     ◈ ",{translate:"ms.map.complex",fallback:"复杂程度"},{text:" | »»»",color:"yellow"},{text:"»»",color:"white"}]
execute if score $complex temp matches 4 run tellraw @a ["     ◈ ",{translate:"ms.map.complex",fallback:"复杂程度"},{text:" | »»»»",color:"gold"},{text:"»",color:"white"}]
execute if score $complex temp matches 5 run tellraw @a ["     ◈ ",{translate:"ms.map.complex",fallback:"复杂程度"},{text:" | »»»»»",color:"red"},{text:"",color:"white"}]
execute unless score $complex temp matches 0..5 run tellraw @a ["     ◈ ",{translate:"ms.map.complex",fallback:"复杂程度"},{text:" | »»»»»",color:"gray"},{text:"",color:"white"}]