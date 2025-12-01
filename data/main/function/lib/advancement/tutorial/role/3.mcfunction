execute at @s run playsound ui.toast.in player @s ~ ~ ~ 5 1

tellraw @s [{text:"» ",color:"#1CCAD9",bold:true},{translate:"ms.tutorial.0-3.sub",fallback:"作为旁观者，你可以通过按下 1~9 传送至对应玩家。建议不要报点哦……",bold:false}]