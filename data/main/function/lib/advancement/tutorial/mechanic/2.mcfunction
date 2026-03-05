execute at @s run playsound ui.toast.in player @s ~ ~ ~ 5 1

tellraw @s [{text:"» ",color:"#1CCAD9",bold:true},{translate:"ms.tutorial.3-2.sub",fallback:"你有一个可以施放的能力，选中并按下 [%s] 来施放它！",bold:false,with:[{keybind:"key.swapOffhand"}]}]