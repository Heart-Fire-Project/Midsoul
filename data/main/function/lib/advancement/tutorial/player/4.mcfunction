execute at @s run playsound ui.toast.in player @s ~ ~ ~ 5 1

tellraw @s[team=soul] [{text:"» ",color:"#1CCAD9",bold:true},{translate:"ms.tutorial.2-4.sub.s",fallback:"传送门开启后，你的移速有所提升，但同时也会发光……小心强化的守卫者！",bold:false}]
tellraw @s[team=guardian] [{text:"» ",color:"#1CCAD9",bold:true},{translate:"ms.tutorial.2-4.sub.g",fallback:"你的移速和伤害都已经显著提升；在传送门开启后，移速还会进一步提升",bold:false}]