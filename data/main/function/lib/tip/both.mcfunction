execute store result score $random temp2 run random value 1..9
tellraw @s ""

execute if score $random temp2 matches 1 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.both.1",fallback:"以普遍理性而言，浮空的东西底下怎么也得有东西撑着它……",bold:false}]
execute if score $random temp2 matches 2 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.both.2",fallback:"如果被卡住了先叫管理员把你弄出去，然后找时间反馈一下……找步骤兄弟是没有用的！",bold:false}]
execute if score $random temp2 matches 3 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.both.3",fallback:"在大厅的公告栏有联系制作组的方法！",bold:false}]
execute if score $random temp2 matches 4 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.both.4",fallback:"心火计划诚招：建筑/策划/美工/建筑/程序/建筑",bold:false}]
execute if score $random temp2 matches 5 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.both.5",fallback:"适当拉高实体渲染距离可以让你看到更多东西，但拉太高可能会有点眼花缭乱",bold:false}]
execute if score $random temp2 matches 6 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.both.6",fallback:"在背包里还可以进行更多设置哦",bold:false}]
execute if score $random temp2 matches 7 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.both.7",fallback:"很久很久以前，守卫者的擦刀只有三秒……最后大家都死光啦！",bold:false}]
execute if score $random temp2 matches 8 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.both.8",fallback:"即使不是收集阶段灵魂也可以收集碎片，并可能有不同的效果",bold:false}]
execute if score $random temp2 matches 9 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.both.9",fallback:"有些能力的效果与距离相关，或许你头顶的条可以帮助你粗略判断一下",bold:false}]