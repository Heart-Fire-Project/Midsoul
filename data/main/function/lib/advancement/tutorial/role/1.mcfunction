execute at @s run playsound ui.toast.in player @s ~ ~ ~ 5 1

tellraw @s [{text:"» ",color:"#1CCAD9",bold:true},{translate:"ms.tutorial.0-1.sub",fallback:"欢迎你，迷失的灵魂。远离冒着红光的敌方，准备开始收集碎片吧",bold:false}]