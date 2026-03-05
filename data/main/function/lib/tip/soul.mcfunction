execute store result score $random temp2 run random value 1..6
tellraw @s ""

execute if score $random temp2 matches 1 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.soul.1",fallback:"正在赶往灵魂之灯的大概不止有你的队友……",bold:false}]
execute if score $random temp2 matches 2 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.soul.2",fallback:"在持有宝物时打开灵魂宝物盒会回复血量并让守卫者发光",bold:false}]
execute if score $random temp2 matches 3 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.soul.3",fallback:"在充能阶段也可以收集碎片，这会延长该阶段的倒计时",bold:false}]
execute if score $random temp2 matches 4 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.soul.4",fallback:"点亮灵魂之灯时，会优先以剩余时间最短的垂死灵魂为救助目标",bold:false}]
execute if score $random temp2 matches 5 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.soul.5",fallback:"若场上仅剩最后一个灵魂，游戏将会给予其一定帮助",bold:false}]
execute if score $random temp2 matches 6 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.soul.6",fallback:"即使没有损失血量，受击后也仍会获得无敌与移速提升",bold:false}]