# 强制进入充能
tellraw @a [{text:"» ",bold:true,color:"#ACB3F6"},{translate:"ms.info.force_state4",fallback:"%s 已强制进入充能阶段",with:[{selector:"@s"}],bold:false}]

function main:state/4/enter