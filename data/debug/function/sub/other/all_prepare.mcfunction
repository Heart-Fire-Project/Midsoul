# 把所有闲人都看作准备，但不开始
tellraw @a [{text:"» ",bold:true,color:"#1FAB89"},{translate:"ms.info.all_prepare",fallback:"%s 已使全员准备进行游戏",with:[{selector:"@s"}],bold:false}]

team join prepare @a[team=!admin]