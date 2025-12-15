# 自定义 - 自己加图
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

# 读取
function debug:sub/custom/check

# 显示当前地图信息（若有）
scoreboard players set $num temp 0
execute unless data storage ms:temp {forceload1:"×"} run scoreboard players add $num temp 1
execute unless data storage ms:temp {forceload2:""} run scoreboard players add $num temp 1
execute unless data storage ms:temp {forceload3:""} run scoreboard players add $num temp 1
scoreboard players reset $size temp
execute if score $map setting matches -9..-1 if data storage ms:temp {size:1} run scoreboard players set $size temp 1
execute if score $map setting matches -9..-1 if data storage ms:temp {size:2} run scoreboard players set $size temp 2
execute if score $map setting matches -9..-1 if data storage ms:temp {size:3} run scoreboard players set $size temp 3
execute if score $map setting matches -9..-1 if data storage ms:temp {size:4} run scoreboard players set $size temp 4
execute if score $map setting matches -9..-1 if data storage ms:temp {size:5} run scoreboard players set $size temp 5
scoreboard players reset $complex temp
execute if score $map setting matches -9..-1 if data storage ms:temp {complex:1} run scoreboard players set $complex temp 1
execute if score $map setting matches -9..-1 if data storage ms:temp {complex:2} run scoreboard players set $complex temp 2
execute if score $map setting matches -9..-1 if data storage ms:temp {complex:3} run scoreboard players set $complex temp 3
execute if score $map setting matches -9..-1 if data storage ms:temp {complex:4} run scoreboard players set $complex temp 4
execute if score $map setting matches -9..-1 if data storage ms:temp {complex:5} run scoreboard players set $complex temp 5
execute if score $map setting matches -9..-1 if score $check_failure temp matches 0 run tellraw @s [{translate:"ms.debug.custom.info",fallback:"请检查以下数据无误后再开始游戏，若游戏异常则需要全局重置",color:"yellow"}]
execute if score $map setting matches -9..-1 if score $check_failure temp matches 1 run tellraw @s [{translate:"ms.debug.custom.warn",fallback:"当前地图的部分数据可能有误，从而导致游戏无法正常推进",color:"gold"}]
execute if score $map setting matches -9..-1 if score $check_failure temp matches 2 run tellraw @s [{translate:"ms.debug.custom.error",fallback:"当前地图的关键数据有所缺失，将无法正常进行游戏！",color:"red"}]
execute if score $map setting matches -9..-1 run tellraw @s [{translate:"ms.debug.custom.selected",fallback:"当前选中"},"  »  ",{storage:"ms:temp",nbt:"name",color:"aqua"},"  «  ",{translate:"ms.debug.custom.map_area",fallback:"[地图区域详情]",hover_event:{action:"show_text",value:[{translate:"ms.debug.custom.force_count",fallback:"已设定 %s 个加载区",with:[{score:{name:"$num",objective:"temp"}}]},"\n",{storage:"ms:temp",nbt:"forceload1"},"\n",{storage:"ms:temp",nbt:"forceload2"},"\n",{storage:"ms:temp",nbt:"forceload3"},"\n",{translate:"ms.debug.custom.center",fallback:"地图中心点"},"\n",{storage:"ms:temp",nbt:"center"}]}}]
execute if score $map setting matches -9..-1 run tellraw @s [" ◈ ",{translate:"ms.debug.custom.shard",fallback:"碎片生成量/收集目标"}," ",{storage:"ms:temp",nbt:"shard_summon",color:"#50A7D9"},"/",{storage:"ms:temp",nbt:"shard_goal",color:"#63C3FA"}]
execute if score $map setting matches -9..-1 run tellraw @s [" ◈ ",{translate:"ms.debug.custom.chest",fallback:"宝盒周期刷新量/上限"}," ",{storage:"ms:temp",nbt:"chest_summon",color:"#CCCCCC"},"/",{storage:"ms:temp",nbt:"chest_max",color:"#DEDEDE"}]
execute if score $map setting matches -9..-1 if score $size temp matches 1 run tellraw @s [" ◈ ",{translate:"ms.map.size",fallback:"地图大小"},{text:" | »",color:"aqua"},{text:"»»»»",color:"white"}]
execute if score $map setting matches -9..-1 if score $size temp matches 2 run tellraw @s [" ◈ ",{translate:"ms.map.size",fallback:"地图大小"},{text:" | »»",color:"green"},{text:"»»»",color:"white"}]
execute if score $map setting matches -9..-1 if score $size temp matches 3 run tellraw @s [" ◈ ",{translate:"ms.map.size",fallback:"地图大小"},{text:" | »»»",color:"yellow"},{text:"»»",color:"white"}]
execute if score $map setting matches -9..-1 if score $size temp matches 4 run tellraw @s [" ◈ ",{translate:"ms.map.size",fallback:"地图大小"},{text:" | »»»»",color:"gold"},{text:"»",color:"white"}]
execute if score $map setting matches -9..-1 if score $size temp matches 5 run tellraw @s [" ◈ ",{translate:"ms.map.size",fallback:"地图大小"},{text:" | »»»»»",color:"red"},{text:"",color:"white"}]
execute if score $map setting matches -9..-1 unless score $size temp matches 1..5 run tellraw @s [" ◈ ",{translate:"ms.map.size",fallback:"地图大小"},{text:" | »»»»»",color:"gray"},{text:"",color:"white"}]
execute if score $map setting matches -9..-1 if score $complex temp matches 1 run tellraw @s [" ◈ ",{translate:"ms.map.complex",fallback:"复杂程度"},{text:" | »",color:"aqua"},{text:"»»»»",color:"white"}]
execute if score $map setting matches -9..-1 if score $complex temp matches 2 run tellraw @s [" ◈ ",{translate:"ms.map.complex",fallback:"复杂程度"},{text:" | »»",color:"green"},{text:"»»»",color:"white"}]
execute if score $map setting matches -9..-1 if score $complex temp matches 3 run tellraw @s [" ◈ ",{translate:"ms.map.complex",fallback:"复杂程度"},{text:" | »»»",color:"yellow"},{text:"»»",color:"white"}]
execute if score $map setting matches -9..-1 if score $complex temp matches 4 run tellraw @s [" ◈ ",{translate:"ms.map.complex",fallback:"复杂程度"},{text:" | »»»»",color:"gold"},{text:"»",color:"white"}]
execute if score $map setting matches -9..-1 if score $complex temp matches 5 run tellraw @s [" ◈ ",{translate:"ms.map.complex",fallback:"复杂程度"},{text:" | »»»»»",color:"red"},{text:"",color:"white"}]
execute if score $map setting matches -9..-1 unless score $complex temp matches 1..5 run tellraw @s [" ◈ ",{translate:"ms.map.complex",fallback:"复杂程度"},{text:" | »»»»»",color:"gray"},{text:"",color:"white"}]
tellraw @s ""

# 附加地图选择
tellraw @s {translate:"ms.debug.map",fallback:"地图 »",color:"#988FF4"}
execute if score $map setting matches -1 run summon marker ~ ~ ~ {CustomName:{text:"[#1]",color:"aqua"},Tags:[map-1,debug_entity]}
execute unless score $map setting matches -1 run summon marker ~ ~ ~ {CustomName:{text:"[#1]",color:"gray"},Tags:[map-1,debug_entity]}
execute if score $map setting matches -2 run summon marker ~ ~ ~ {CustomName:{text:"[#2]",color:"aqua"},Tags:[map-2,debug_entity]}
execute unless score $map setting matches -2 run summon marker ~ ~ ~ {CustomName:{text:"[#2]",color:"gray"},Tags:[map-2,debug_entity]}
execute if score $map setting matches -3 run summon marker ~ ~ ~ {CustomName:{text:"[#3]",color:"aqua"},Tags:[map-3,debug_entity]}
execute unless score $map setting matches -3 run summon marker ~ ~ ~ {CustomName:{text:"[#3]",color:"gray"},Tags:[map-3,debug_entity]}
execute if score $map setting matches -4 run summon marker ~ ~ ~ {CustomName:{text:"[#4]",color:"aqua"},Tags:[map-4,debug_entity]}
execute unless score $map setting matches -4 run summon marker ~ ~ ~ {CustomName:{text:"[#4]",color:"gray"},Tags:[map-4,debug_entity]}
execute if score $map setting matches -5 run summon marker ~ ~ ~ {CustomName:{text:"[#5]",color:"aqua"},Tags:[map-5,debug_entity]}
execute unless score $map setting matches -5 run summon marker ~ ~ ~ {CustomName:{text:"[#5]",color:"gray"},Tags:[map-5,debug_entity]}
execute if score $map setting matches -6 run summon marker ~ ~ ~ {CustomName:{text:"[#6]",color:"aqua"},Tags:[map-6,debug_entity]}
execute unless score $map setting matches -6 run summon marker ~ ~ ~ {CustomName:{text:"[#6]",color:"gray"},Tags:[map-6,debug_entity]}
execute if score $map setting matches -7 run summon marker ~ ~ ~ {CustomName:{text:"[#7]",color:"aqua"},Tags:[map-7,debug_entity]}
execute unless score $map setting matches -7 run summon marker ~ ~ ~ {CustomName:{text:"[#7]",color:"gray"},Tags:[map-7,debug_entity]}
execute if score $map setting matches -8 run summon marker ~ ~ ~ {CustomName:{text:"[#8]",color:"aqua"},Tags:[map-8,debug_entity]}
execute unless score $map setting matches -8 run summon marker ~ ~ ~ {CustomName:{text:"[#8]",color:"gray"},Tags:[map-8,debug_entity]}
execute if score $map setting matches -9 run summon marker ~ ~ ~ {CustomName:{text:"[#9]",color:"aqua"},Tags:[map-9,debug_entity]}
execute unless score $map setting matches -9 run summon marker ~ ~ ~ {CustomName:{text:"[#9]",color:"gray"},Tags:[map-9,debug_entity]}
tellraw @s ["",{selector:"@e[tag=map-1]",hover_event:{action:"show_text",value:""},click_event:{action:"run_command",command:"trigger detect.interact set -4101"}}," ",{selector:"@e[tag=map-2]",hover_event:{action:"show_text",value:""},click_event:{action:"run_command",command:"trigger detect.interact set -4102"}}," ",{selector:"@e[tag=map-3]",hover_event:{action:"show_text",value:""},click_event:{action:"run_command",command:"trigger detect.interact set -4103"}}," ",{selector:"@e[tag=map-4]",hover_event:{action:"show_text",value:""},click_event:{action:"run_command",command:"trigger detect.interact set -4104"}}," ",{selector:"@e[tag=map-5]",hover_event:{action:"show_text",value:""},click_event:{action:"run_command",command:"trigger detect.interact set -4105"}}," ",{selector:"@e[tag=map-6]",hover_event:{action:"show_text",value:""},click_event:{action:"run_command",command:"trigger detect.interact set -4106"}}," ",{selector:"@e[tag=map-7]",hover_event:{action:"show_text",value:""},click_event:{action:"run_command",command:"trigger detect.interact set -4107"}}," ",{selector:"@e[tag=map-8]",hover_event:{action:"show_text",value:""},click_event:{action:"run_command",command:"trigger detect.interact set -4108"}}," ",{selector:"@e[tag=map-9]",hover_event:{action:"show_text",value:""},click_event:{action:"run_command",command:"trigger detect.interact set -4109"}}]
execute if data storage ms:setting {random_custom:false} run tellraw @s [{translate:"ms.debug.custom_edit",fallback:"[编辑自定义地图]",click_event:{action:"run_command",command:"trigger detect.interact set -4200"}}," ",{translate:"ms.debug.random_custom",fallback:"[加入随机地图池]",color:"gray",click_event:{action:"run_command",command:"trigger detect.interact set -4201"},hover_event:{action:"show_text",value:{translate:"ms.debug.random_custom.desc",fallback:"随机地图时是否选择自定义地图"}}}]
execute if data storage ms:setting {random_custom:true} run tellraw @s [{translate:"ms.debug.custom_edit",fallback:"[编辑自定义地图]",click_event:{action:"run_command",command:"trigger detect.interact set -4200"}}," ",{translate:"ms.debug.random_custom",fallback:"[加入随机地图池]",color:"green",click_event:{action:"run_command",command:"trigger detect.interact set -4201"},hover_event:{action:"show_text",value:{translate:"ms.debug.random_custom.desc",fallback:"随机地图时是否选择自定义地图"}}}]

# 标记
tellraw @s {translate:"ms.debug.mark",fallback:"标记 »",color:"#988FF4"}
tellraw @s ["",{translate:"ms.debug.mark.blue",fallback:"[灵魂碎片]",color:"#50A7D9","click_event":{action:"run_command",command:"trigger detect.interact set -4301"}}," ",{translate:"ms.debug.mark.gold",fallback:"[灵魂之灯]",color:"gold","click_event":{action:"run_command",command:"trigger detect.interact set -4302"}}," ",{translate:"ms.debug.mark.gray",fallback:"[灵魂宝物盒]",color:"#CCCCCC","click_event":{action:"run_command",command:"trigger detect.interact set -4303"}}," ",{translate:"ms.debug.mark.purple",fallback:"[传送门]",color:"light_purple","click_event":{action:"run_command",command:"trigger detect.interact set -4304"}}," ",{translate:"ms.debug.mark.red",fallback:"[删除标记]",color:"red","click_event":{action:"run_command",command:"trigger detect.interact set -4305"}}," ",{translate:"ms.debug.lock",fallback:"[容器上锁]","click_event":{action:"run_command",command:"trigger detect.interact set -4306"}}]
execute if data storage ms:setting {show_mark:false} unless score $mark_count temp matches 1 run tellraw @s ["",{translate:"ms.debug.show_mark",fallback:"[展示标记]",color:"gray","click_event":{action:"run_command",command:"trigger detect.interact set -4300"}}," ",{translate:"ms.debug.mark.count",fallback:"[统计数量]",color:"white","click_event":{action:"run_command",command:"trigger detect.interact set -4399"}}]
execute if data storage ms:setting {show_mark:true} unless score $mark_count temp matches 1 run tellraw @s ["",{translate:"ms.debug.show_mark",fallback:"[展示标记]",color:"green","click_event":{action:"run_command",command:"trigger detect.interact set -4300"}}," ",{translate:"ms.debug.mark.count",fallback:"[统计数量]",color:"white","click_event":{action:"run_command",command:"trigger detect.interact set -4399"}}]
execute if data storage ms:setting {show_mark:false} if score $mark_count temp matches 1 run tellraw @s ["",{translate:"ms.debug.show_mark",fallback:"[展示标记]",color:"gray","click_event":{action:"run_command",command:"trigger detect.interact set -4300"}}," ",{translate:"ms.debug.mark.count",fallback:"[统计数量]",color:"white","click_event":{action:"run_command",command:"trigger detect.interact set -4399"}}," » ",{score:{objective:"temp",name:"$blue_count"},color:"#50A7D9"},"/",{score:{objective:"temp",name:"$gold_count"},color:"gold"},"/",{score:{objective:"temp",name:"$gray_count"},color:"gray"},"/",{score:{objective:"temp",name:"$purple_count"},color:"light_purple"}]
execute if data storage ms:setting {show_mark:true} if score $mark_count temp matches 1 run tellraw @s ["",{translate:"ms.debug.show_mark",fallback:"[展示标记]",color:"green","click_event":{action:"run_command",command:"trigger detect.interact set -4300"}}," ",{translate:"ms.debug.mark.count",fallback:"[统计数量]",color:"white","click_event":{action:"run_command",command:"trigger detect.interact set -4399"}}," » ",{score:{objective:"temp",name:"$blue_count"},color:"#50A7D9"},"/",{score:{objective:"temp",name:"$gold_count"},color:"gold"},"/",{score:{objective:"temp",name:"$gray_count"},color:"gray"},"/",{score:{objective:"temp",name:"$purple_count"},color:"light_purple"}]
scoreboard players set $mark_count temp 0

tellraw @s ["\n",{translate:"ms.debug.custom.desc",fallback:"可在此进行自定义地图预览与选择，也可调用相关工具"}]
tellraw @s [{text:"",color:"gray"},{text:" ◇ ",click_event:{action:"run_command",command:"trigger detect.interact set -1"}},{translate:"ms.debug.setting",fallback:"设定 ",click_event:{action:"run_command",command:"trigger detect.interact set -1"}},{text:"/",color:"white"},{text:" ◇ ",click_event:{action:"run_command",command:"trigger detect.interact set -2"}},{translate:"ms.debug.game",fallback:"对局 ",click_event:{action:"run_command",command:"trigger detect.interact set -2"}},{text:"/",color:"white"},{text:" ◇ ",click_event:{action:"run_command",command:"trigger detect.interact set -3"}},{translate:"ms.debug.other",fallback:"杂项 ",click_event:{action:"run_command",command:"trigger detect.interact set -3"}},{text:"/",color:"white"},{text:" ◆ ",color:"aqua",click_event:{action:"run_command",command:"trigger detect.interact set -4"}},{translate:"ms.debug.custom",fallback:"自定义 ",color:"aqua",click_event:{action:"run_command",command:"trigger detect.interact set -4"}}]
tellraw @s [{text:"",color:"#7367F0"},{text:"» ",bold:true},{translate:"ms.debug.panel",fallback:"午夜灵魂调试面板 V2"},{text:" » ",bold:true},{translate:"ms.debug.init",fallback:"[全局重置]",color:"red",click_event:{action:"run_command",command:"trigger detect.interact set -999"}}," ",{translate:"ms.debug.lobby",fallback:"[终止本局]",color:"gold",click_event:{action:"run_command",command:"trigger detect.interact set -888"}}," ",{translate:"ms.debug.leave_admin",fallback:"[退出 admin]",color:"light_purple",click_event:{action:"run_command",command:"trigger detect.interact set -777"}}]

kill @e[tag=debug_entity]
playsound ui.button.click player @s 0 1000000 0 120000