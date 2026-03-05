execute store result score $random temp2 run random value 1..6
tellraw @s ""

execute if score $random temp2 matches 1 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.guar.1",fallback:"别守着垂死的灵魂，那完全没用",bold:false}]
execute if score $random temp2 matches 2 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.guar.2",fallback:"你虽然无法持有灵魂宝物，但这并不妨碍你打开灵魂宝物盒",bold:false}]
execute if score $random temp2 matches 3 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.guar.3",fallback:"碎片量总是略微多于需求的，不要死守着碎片",bold:false}]
execute if score $random temp2 matches 4 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.guar.4",fallback:"作为守卫者，你的气息探测条是不会变红的，再近也不会",bold:false}]
execute if score $random temp2 matches 5 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.guar.5",fallback:"只要你的武器击中了东西，无论是否造成伤害都会进入擦刀状态",bold:false}]
execute if score $random temp2 matches 6 run tellraw @s [{text:"» ",color:"#7367F0",bold:true},{text:"Tip! ",bold:false},{translate:"ms.tip.guar.6",fallback:"如果你的武器有附魔光效，那么此时你可以造成加倍的伤害",bold:false}]