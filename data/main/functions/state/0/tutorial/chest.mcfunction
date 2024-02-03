tellraw @s "\n\n\n\n\n\n\n"

tellraw @s [{"text":" » ","color":"#CCCCCC","bold":true},{"translate":"ms.chest","fallback":"灵魂宝物箱","bold":false}]
tellraw @s ["     ",{"translate":"ms.tutorial.chest.0","fallback":"它对你有益，对别人？我咋知道","color":"gray","italic":true}]
tellraw @s ["     ",{"translate":"ms.tutorial.collect","fallback":"需要交互 %s 秒","with":[{"text":"4"}],"color":"gray"},"\n"]
tellraw @s ["     ",{"translate":"ms.tutorial.chest.1","fallback":"周期性随机刷新，存在一定的上限；"}]
tellraw @s ["     ",{"translate":"ms.tutorial.chest.2","fallback":"灵魂方打开后将会获得一件随机的灵魂宝物；"}]
tellraw @s ["     ",{"translate":"ms.tutorial.chest.3","fallback":"守卫者打开则会高亮 10 秒最远的灵魂并获得 7 秒的中幅%s。","with":[{"translate":"ms.tooltip.speed","fallback":"加速","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"ms.tootip.speed.2","fallback":"移动速度 +40%"}]}}]}]
tellraw @s ["     ",{"translate":"ms.tutorial.chest.4","fallback":"此外，灵魂宝物最多只能同时持有 1 个；"}]
tellraw @s ["     ",{"translate":"ms.tutorial.chest.5","fallback":"在持有灵魂宝物时开启灵魂宝物箱则会高亮 7 秒最远的守卫者。"},"\n"]

playsound item.book.page_turn player @s