execute at @s run playsound ui.toast.in player @s ~ ~ ~ 5 1

tellraw @s [{text:"» ",color:"#1CCAD9",bold:true},{translate:"ms.tutorial.2-3.sub",fallback:"在被击倒后，队友可以在有限的时间内将你救回来，否则你就会消亡……",bold:false}]