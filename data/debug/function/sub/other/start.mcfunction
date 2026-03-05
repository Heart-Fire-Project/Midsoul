# 把所有闲人都看作准备，然后开始
execute if score @s detect.interact matches -3011 run tellraw @a [{text:"» ",bold:true,color:"#62D2A2"},{translate:"ms.info.force_start",fallback:"%s 已强制开始本局游戏",with:[{selector:"@s"}],bold:false}]
execute if score @s detect.interact matches -3013 run tellraw @a [{text:"» ",bold:true,color:"#9DF3C4"},{translate:"ms.info.restart",fallback:"%s 已重新开始本局游戏",with:[{selector:"@s"}],bold:false}]

team join prepare @a[team=!admin]
function main:state/1/enter