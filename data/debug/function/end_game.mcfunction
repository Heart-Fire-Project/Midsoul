# 强制灵气满溢
tellraw @a [{text:"» ",bold:true,color:"gold"},{translate:"ms.info.stop_game",fallback:"%s 已终止本局游戏",with:[{selector:"@s"}],bold:false}]

function main:state/0/enter