execute at @s run playsound ui.toast.in player @s ~ ~ ~ 5 1

tellraw @s [{text:"» ",color:"#1CCAD9",bold:true},{translate:"ms.tutorial.3-3.sub",fallback:"灵气机制会提示剩余碎片的位置，也可能会更加直接地推进游戏……",bold:false}]