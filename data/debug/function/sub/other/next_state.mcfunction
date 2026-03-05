# 强制进入下个阶段
tellraw @a [{text:"» ",bold:true,color:"#ACB3F6"},{translate:"ms.info.next_state",fallback:"%s 已跳过当前游戏阶段",with:[{selector:"@s"}],bold:false}]

execute if score $state data matches 3 run function main:state/4/enter