execute at @s run playsound ui.toast.in player @s ~ ~ ~ 5 1

tellraw @s[team=soul] [{text:"» ",color:"#1CCAD9",bold:true},{translate:"ms.tutorial.1-2.sub.s",fallback:"灵魂之灯可以拯救你，或者你的队友；在确保安全的情况下，抓紧去点亮它",bold:false}]
tellraw @s[team=guardian] [{text:"» ",color:"#1CCAD9",bold:true},{translate:"ms.tutorial.1-2.sub.g",fallback:"灵魂之灯可以让你刚击倒的灵魂恢复过来，请多加注意，适度防守",bold:false}]