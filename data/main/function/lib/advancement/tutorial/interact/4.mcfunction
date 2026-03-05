execute at @s run playsound ui.toast.in player @s ~ ~ ~ 5 1

tellraw @s[team=soul] [{text:"» ",color:"#1CCAD9",bold:true},{translate:"ms.tutorial.1-4.sub.s",fallback:"传送门需要很长的时间来开启，不过进度可以累积……小心被强化的守卫者！",bold:false}]
tellraw @s[team=guardian] [{text:"» ",color:"#1CCAD9",bold:true},{translate:"ms.tutorial.1-4.sub.g",fallback:"开启传送门所需的时间很长，利用好这次机会，剩余时间不多了……",bold:false}]