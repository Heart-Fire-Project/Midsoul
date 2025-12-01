execute at @s run playsound ui.toast.in player @s ~ ~ ~ 5 1

tellraw @s [{text:"» ",color:"#1CCAD9",bold:true},{translate:"ms.tutorial.2-2.sub",fallback:"只要击中目标，无论是否造成伤害你都会进入擦刀状态……",bold:false}]