tellraw @s "\n\n\n\n\n\n\n"

tellraw @s [{"text":" » ","color":"light_purple","bold":true},{"translate":"ms.portal","fallback":"传送门","bold":false}]
tellraw @s ["     ",{"translate":"ms.tutorial.portal.0","fallback":"打通生死两岸，却同时也是复活前的唯一阻碍","color":"gray","italic":true},"\n"]
tellraw @s ["     ",{"translate":"ms.tutorial.portal.1","fallback":"满足条件后即会生成，并且开始扰乱力场；"}]
tellraw @s ["     ",{"translate":"ms.tutorial.portal.2","fallback":"条件包括碎片收集达标，灵魂方玩家过少或游戏时间过长；"}]
tellraw @s ["     ",{"translate":"ms.tutorial.portal.3","fallback":"扰乱力场则会导致守卫者进入%s，并且无法再探知气息。","with":[{"translate":"ms.tooltip.emergency","fallback":"危机状态","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"ms.tooltip.emergency.detail","fallback":"移速提升至 160% 且伤害翻倍"}]}}]}]
tellraw @s ["     ",{"translate":"ms.tutorial.portal.4","fallback":"此外，传送门并不稳定，其存在时间有限；"}]
tellraw @s ["     ",{"translate":"ms.tutorial.portal.5","fallback":"首次倒计时结束后会额外生成一个传送门，并重置倒计时；"}]
tellraw @s ["     ",{"translate":"ms.tutorial.portal.6","fallback":"第二次倒计时结束后则场上全部灵魂死亡。"},"\n"]

playsound item.book.page_turn player @s