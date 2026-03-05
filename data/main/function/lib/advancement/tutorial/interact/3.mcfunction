execute at @s run playsound ui.toast.in player @s ~ ~ ~ 5 1

tellraw @s[team=soul] [{text:"» ",color:"#1CCAD9",bold:true},{translate:"ms.tutorial.1-3.sub.s",fallback:"打开灵魂宝物盒可以获取各种各样的道具，不过你只能同时持有一个",bold:false}]
tellraw @s[team=guardian] [{text:"» ",color:"#1CCAD9",bold:true},{translate:"ms.tutorial.1-3.sub.g",fallback:"你无法获取灵魂宝物盒中的宝物，不过你仍然可以打开它们来获取效果",bold:false}]