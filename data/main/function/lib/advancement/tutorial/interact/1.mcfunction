execute at @s run playsound ui.toast.in player @s ~ ~ ~ 5 1

tellraw @s[team=soul] [{text:"» ",color:"#1CCAD9",bold:true},{translate:"ms.tutorial.1-1.sub.s",fallback:"这浮在半空中的便是灵魂碎片，你们需要收集它们来进行下一步",bold:false}]
tellraw @s[team=guardian] [{text:"» ",color:"#1CCAD9",bold:true},{translate:"ms.tutorial.1-1.sub.g",fallback:"这些近地悬浮的东西就是灵魂碎片，灵魂需要收集它们来进行下一步",bold:false}]