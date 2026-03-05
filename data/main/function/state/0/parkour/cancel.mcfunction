# 恢复状态
scoreboard players set @s state 0

# 显示标题栏
function main:state/0/parkour/time_format {source:"tick.parkour"}
title @s actionbar [{translate:"ms.parkour.cancel",fallback:"跑酷已中止",color:"red"}," | ",{storage:"ms:string",nbt:"result"}]

# 播放音效
playsound block.note_block.bell player @s 0 1000000 0 120000 0.1