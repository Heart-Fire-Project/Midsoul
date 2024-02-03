tellraw @s "\n\n\n\n\n\n\n"

tellraw @s [{"text":" » ","color":"blue","bold":true},{"translate":"ms.shard","fallback":"灵魂碎片","bold":false}]
tellraw @s ["     ",{"translate":"ms.tutorial.shard.0","fallback":"由执念凝结而成的晶体，而执念总是蕴含着能量","color":"gray","italic":true}]
tellraw @s ["     ",{"translate":"ms.tutorial.collect","fallback":"需要交互 %s 秒","with":[{"text":"3"}],"color":"gray"},"\n"]
tellraw @s ["     ",{"translate":"ms.tutorial.shard.1","fallback":"游戏开始后随机生成，数量略多于需求量；"}]
tellraw @s ["     ",{"translate":"ms.tutorial.shard.2","fallback":"收集到目标数量后，即可开启传送门。"}]
tellraw @s ["     ",{"translate":"ms.tutorial.shard.3","fallback":"此外，随着收集数量的增多，会逐渐提示剩余碎片的位置。"},"\n"]

playsound item.book.page_turn player @s