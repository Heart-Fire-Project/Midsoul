execute at @s run playsound ui.toast.in player @s ~ ~ ~ 5 1

tellraw @s [{text:"» ",color:"#1CCAD9",bold:true},{translate:"ms.tutorial.3-1.sub",fallback:"屏幕上方计量条的颜色发生了改变！这说明周围有敌方，开始追逃吧！",bold:false}]