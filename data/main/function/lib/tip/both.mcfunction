execute store result score $random temp2 run random value 1..8
tellraw @s ""

execute if score $random temp2 matches 1 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.both.1",fallback:"除了目测，你也可以用气息探测来粗略判定距离",bold:false}]
execute if score $random temp2 matches 2 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.both.2",fallback:"如果有你不再需要的提示，可以在背包中调整个人设置将它关闭",bold:false}]
execute if score $random temp2 matches 3 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.both.3",fallback:"隐身时，疾跑在你脚下产生的粒子可能会暴露你的行踪",bold:false}]
execute if score $random temp2 matches 4 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.both.4",fallback:"如果看不到发光的目标，可以适当拉高“实体渲染距离”设置项",bold:false}]
execute if score $random temp2 matches 5 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.both.5",fallback:"灵气机制触发后，即使后续不满足其触发条件也不会失效",bold:false}]
execute if score $random temp2 matches 6 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.both.6",fallback:"如果你想感受没有充能阶段的时代，或许可以试试 1.0 版本",bold:false}]
execute if score $random temp2 matches 7 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.both.7",fallback:"有任何问题和想法都可以和制作组说！公告栏里有联系方式哦",bold:false}]
execute if score $random temp2 matches 8 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.both.8",fallback:"心火计划诚招：建筑/模型/绘制/程序，详询制作组",bold:false}]