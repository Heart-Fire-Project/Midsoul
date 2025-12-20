execute store result score $random temp2 run random value 1..6
tellraw @s ""

execute if score $random temp2 matches 1 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.soul.1",fallback:"正在赶往灵魂之灯的怕不是不止你的队友……",bold:false}]
execute if score $random temp2 matches 2 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.soul.2",fallback:"在持有宝物时打开灵魂宝物盒会让守卫者发光并回复血量",bold:false}]
execute if score $random temp2 matches 3 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.soul.3",fallback:"有些游戏物件可能受到了守卫者的影响，多加留意",bold:false}]
execute if score $random temp2 matches 4 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.soul.4",fallback:"灵魂之灯的治疗目标是剩余时间最短的垂死灵魂，而非生成它的那个",bold:false}]
execute if score $random temp2 matches 5 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.soul.5",fallback:"和灵魂守卫者不同，灵魂掉线后不能再继续游戏",bold:false}]
execute if score $random temp2 matches 6 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.soul.6",fallback:"即使没有损失血量，被攻击后的加速与无敌也仍然生效，同理守卫者也会进入擦刀",bold:false}]