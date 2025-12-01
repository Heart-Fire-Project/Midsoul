# 把所有闲人都看作准备，然后开始
tellraw @a [{text:"» ",bold:true,color:"#9DDFFB"},{translate:"ms.info.force_start",fallback:"%s 已强制进入初始阶段",with:[{selector:"@s"}],bold:false}]

team join prepare @a[team=!admin]
function main:state/1/enter