# 触发终局
tellraw @a [{text:"» ",bold:true,color:"#B9D7EA"},{translate:"ms.info.finale",fallback:"%s 已操作触发终局机制",with:[{selector:"@s"}],bold:false}]

execute if score $state data matches 4 run function main:state/4/finale