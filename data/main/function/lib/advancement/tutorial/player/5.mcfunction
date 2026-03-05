execute at @s run playsound ui.toast.in player @s ~ ~ ~ 5 1

tellraw @s [{text:"» ",color:"#1CCAD9",bold:true},{translate:"ms.tutorial.2-5.sub",fallback:"脱离垂死后，你会获得加速与无敌……或许可以帮你的救命恩人挡一刀？",bold:false}]