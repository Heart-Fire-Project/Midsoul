scoreboard players set $blank0 info 8
scoreboard players display name $blank0 info ""
scoreboard players display numberformat $blank0 info blank

# 第一日，模式标题
scoreboard players set $mode info 7
scoreboard players display name $mode info [{translate:"ms.mode",fallback:"模式"},{text:" »"}]

# 第二日，判断模式
scoreboard players operation $mode data = $mode setting
execute if score $mode data matches 1 run scoreboard players display numberformat $mode info fixed {translate:"ms.mode.1",fallback:"灵气碎片",color:"#7367F0"}
execute if score $mode data matches 2 run scoreboard players display numberformat $mode info fixed {translate:"ms.mode.2",fallback:"针锋奔逃",color:"#7367F0"}

scoreboard players set $blank1 info 6
scoreboard players display name $blank1 info ""
scoreboard players display numberformat $blank1 info blank

# 第三日，地图标题
scoreboard players set $map info 5
scoreboard players display name $map info [{translate:"ms.map",fallback:"地图"},{text:" »"}]

# 第四日，判断地图
scoreboard players operation $map data = $map setting
execute if score $map setting matches 0 run function main:state/1/random_map
execute if score $map setting matches ..-9 run function main:state/1/random_map
execute if score $map setting > $map_max data run function main:state/1/random_map
function main:lib/map/data
execute if score $map data matches -9..-1 run scoreboard players display numberformat $map info fixed {nbt:"name",storage:"ms:temp",color:"#7367F0"}
execute if score $map data matches 1 run scoreboard players display numberformat $map info fixed {translate:"ms.map.1",fallback:"聚光圣殿",color:"#7367F0"}
execute if score $map data matches 2 run scoreboard players display numberformat $map info fixed {translate:"ms.map.2",fallback:"镇灵塔楼",color:"#7367F0"}
execute if score $map data matches 3 run scoreboard players display numberformat $map info fixed {translate:"ms.map.3",fallback:"山间湖谷",color:"#7367F0"}
execute if score $map data matches 4 run scoreboard players display numberformat $map info fixed {translate:"ms.map.4",fallback:"心火特区",color:"#7367F0"}

# 第五日，地图大小
scoreboard players set $size info 4
scoreboard players reset $size temp
execute if data storage ms:temp {size:0} run scoreboard players set $size temp 0
execute if data storage ms:temp {size:1} run scoreboard players set $size temp 1
execute if data storage ms:temp {size:2} run scoreboard players set $size temp 2
execute if data storage ms:temp {size:3} run scoreboard players set $size temp 3
execute if data storage ms:temp {size:4} run scoreboard players set $size temp 4
execute if data storage ms:temp {size:5} run scoreboard players set $size temp 5
scoreboard players display name $size info {translate:"ms.map.size",fallback:"地图大小",color:"gray"}
execute if score $size temp matches 1 run scoreboard players display numberformat $size info fixed {text:"«",color:"aqua"}
execute if score $size temp matches 2 run scoreboard players display numberformat $size info fixed {text:"««",color:"green"}
execute if score $size temp matches 3 run scoreboard players display numberformat $size info fixed {text:"«««",color:"yellow"}
execute if score $size temp matches 4 run scoreboard players display numberformat $size info fixed {text:"««««",color:"gold"}
execute if score $size temp matches 5 run scoreboard players display numberformat $size info fixed {text:"«««««",color:"red"}
execute unless score $size temp matches 1..5 run scoreboard players display numberformat $size info fixed {text:"-",color:"gray"}

# 第六日，地图复杂度
scoreboard players set $complex info 3
scoreboard players reset $complex temp
execute if data storage ms:temp {complex:0} run scoreboard players set $complex temp 0
execute if data storage ms:temp {complex:1} run scoreboard players set $complex temp 1
execute if data storage ms:temp {complex:2} run scoreboard players set $complex temp 2
execute if data storage ms:temp {complex:3} run scoreboard players set $complex temp 3
execute if data storage ms:temp {complex:4} run scoreboard players set $complex temp 4
execute if data storage ms:temp {complex:5} run scoreboard players set $complex temp 5
scoreboard players display name $complex info {translate:"ms.map.complex",fallback:"复杂程度",color:"gray"}
execute if score $complex temp matches 1 run scoreboard players display numberformat $complex info fixed {text:"«",color:"aqua"}
execute if score $complex temp matches 2 run scoreboard players display numberformat $complex info fixed {text:"««",color:"green"}
execute if score $complex temp matches 3 run scoreboard players display numberformat $complex info fixed {text:"«««",color:"yellow"}
execute if score $complex temp matches 4 run scoreboard players display numberformat $complex info fixed {text:"««««",color:"gold"}
execute if score $complex temp matches 5 run scoreboard players display numberformat $complex info fixed {text:"«««««",color:"red"}
execute unless score $complex temp matches 1..5 run scoreboard players display numberformat $complex info fixed {text:"-",color:"gray"}

scoreboard players set $blank2 info 2
scoreboard players display name $blank2 info ""
scoreboard players display numberformat $blank2 info blank

# 第七日，回响标题
execute if score $echo data matches 1..9 run scoreboard players set $echo info 1
execute if score $echo data matches 1..9 run scoreboard players display name $echo info [{translate:"ms.echo",fallback:"回响"},{text:" »"}]

# 然后，在第八日……
execute if score $echo data matches 1 run scoreboard players display numberformat $echo info fixed {translate:"ms.echo.1",fallback:"强制性引导",color:"#F75EEB"}
execute if score $echo data matches 2 run scoreboard players display numberformat $echo info fixed {translate:"ms.echo.2",fallback:"灵魂鉴碎片",color:"#F75EEB"}
execute if score $echo data matches 3 run scoreboard players display numberformat $echo info fixed {translate:"ms.echo.3",fallback:"开盒得技能",color:"#F75EEB"}
execute if score $echo data matches 4 run scoreboard players display numberformat $echo info fixed {translate:"ms.echo.4",fallback:"天幕降落雷",color:"#F75EEB"}
execute if score $echo data matches 5 run scoreboard players display numberformat $echo info fixed {translate:"ms.echo.5",fallback:"谁家小灵魂",color:"#F75EEB"}
execute if score $echo data matches 6 run scoreboard players display numberformat $echo info fixed {translate:"ms.echo.6",fallback:"冲刺冲刺冲",color:"#F75EEB"}
execute if score $echo data matches 7 run scoreboard players display numberformat $echo info fixed {translate:"ms.echo.7",fallback:"命运交响曲",color:"#F75EEB"}
execute if score $echo data matches 8 run scoreboard players display numberformat $echo info fixed {translate:"ms.echo.8",fallback:"先抑再后扬",color:"#F75EEB"}
execute if score $echo data matches 9 run scoreboard players display numberformat $echo info fixed {translate:"ms.echo.9",fallback:"九次九重片",color:"#F75EEB"}