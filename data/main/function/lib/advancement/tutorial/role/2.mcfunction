execute at @s run playsound ui.toast.in player @s ~ ~ ~ 5 1

tellraw @s [{text:"» ",color:"#1CCAD9",bold:true},{translate:"ms.tutorial.0-2.sub",fallback:"欢迎来到你的第一次守卫工作……拿好手里的武器，斩断所有的灵魂！",bold:false}]