execute store result score $random temp2 run random value 1..6
tellraw @s ""

execute if score $random temp2 matches 1 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.guar.1",fallback:"别守着垂死的灵魂，那完全没用",bold:false}]
execute if score $random temp2 matches 2 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.guar.2",fallback:"你虽然无法持有灵魂宝物，但或许可以“帮”灵魂多开几个",bold:false}]
execute if score $random temp2 matches 3 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.guar.3",fallback:"传送门永远不会被全部守住，多看，多听",bold:false}]
execute if score $random temp2 matches 4 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.guar.4",fallback:"你头顶的条是不会变红的，再近也不会",bold:false}]
execute if score $random temp2 matches 5 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.guar.5",fallback:"只要你的刀击中了东西，无论是否造成伤害都会进入擦刀状态",bold:false}]
execute if score $random temp2 matches 6 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.guar.6",fallback:"趁你的剑有附魔光效时攻击可以造成大量伤害",bold:false}]