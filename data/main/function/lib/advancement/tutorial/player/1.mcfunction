execute at @s run playsound ui.toast.in player @s ~ ~ ~ 5 1

tellraw @s [{text:"» ",color:"#1CCAD9",bold:true},{translate:"ms.tutorial.2-1.sub",fallback:"除非是伤害加成，你应该已经没了半条命……趁着还有加速和无敌快跑！",bold:false}]