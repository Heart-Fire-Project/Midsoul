tellraw @s "\n\n\n\n\n\n\n"

tellraw @s [{"text":" » ","color":"gold","bold":true},{"translate":"ms.lamp","fallback":"灵魂之灯","bold":false}]
tellraw @s ["     ",{"translate":"ms.tutorial.lamp.0","fallback":"无论是何种光芒，都能引导迷途上的羔羊","color":"gray","italic":true}]
tellraw @s ["     ",{"translate":"ms.tutorial.collect","fallback":"需要交互 %s 秒","with":[{"text":"5"}],"color":"gray"},"\n"]
tellraw @s ["     ",{"translate":"ms.tutorial.lamp.1","fallback":"有灵魂进入%s时生成并高亮；","with":[{"translate":"ms.tooltip.dying","fallback":"垂死状态","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"ms.tootip.dying.detail","fallback":"受到致命攻击后进入，在一定时间后死亡"}]}}]}]
tellraw @s ["     ",{"translate":"ms.tutorial.lamp.2","fallback":"点亮灵魂之灯即可使一位灵魂脱离垂死，并传送到该点位；"}]
tellraw @s ["     ",{"translate":"ms.tutorial.lamp.3","fallback":"被救助的灵魂同时会获得 20 秒的大幅%s与无敌。","with":[{"translate":"ms.tooltip.speed","fallback":"加速","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"ms.tootip.speed.5","fallback":"移动速度 +100%"}]}}]},"\n"]

playsound item.book.page_turn player @s