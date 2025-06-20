playsound item.book.page_turn block @s ~ ~ ~

# 1 - Roser
execute if score @s temp matches 1 run tellraw @s [{"text":"","color":"gold"},{"text":"\n» ","bold":true},{"translate":"ms.credit.roser","fallback":"Roser"}," | ",{"translate":"ms.credit.1","fallback":"架构者"}]
execute if score @s temp matches 1 run tellraw @s [{"text":"","color":"white"},{"text":"» ","bold":true},{"translate":"ms.credit.1.desc","fallback":"午夜灵魂主创，数据包及无数 Bug 的笔者"}]
execute if score @s temp matches 1 run tellraw @s [{"text":"✒ ","color":"gray"},{"translate":"ms.credit.1.note","fallback":"希望你能玩的开心，更希望 Mojang 不要瞎改他那个数据包了……"}]

# 2 - 思遥方
execute if score @s temp matches 2 run tellraw @s [{"text":"","color":"aqua"},{"text":"\n» ","bold":true},{"translate":"ms.credit.seayay","fallback":"思遥方"}," | ",{"translate":"ms.credit.2","fallback":"创想家"}]
execute if score @s temp matches 2 run tellraw @s [{"text":"","color":"white"},{"text":"» ","bold":true},{"translate":"ms.credit.2.desc","fallback":"午夜灵魂主创，韧性满点，可能是看少女乐队造成的"}]
execute if score @s temp matches 2 run tellraw @s [{"text":"✒ ","color":"gray"},{"translate":"ms.credit.2.note","fallback":"“能陪我组一辈子的乐队吗？”"}]

# 3 - 烛月yuzuki
execute if score @s temp matches 3 run tellraw @s [{"text":"","color":"#61A1A9"},{"text":"\n» ","bold":true},{"translate":"ms.credit.yuzuki","fallback":"烛月yuzuki"}," | ",{"translate":"ms.credit.3","fallback":"建筑师"}]
execute if score @s temp matches 3 run tellraw @s [{"text":"","color":"white"},{"text":"» ","bold":true},{"translate":"ms.credit.3.desc","fallback":"首席建筑师；首席中的首席，没有任何之一"}]
execute if score @s temp matches 3 run tellraw @s [{"text":"✒ ","color":"gray"},{"translate":"ms.credit.3.note","fallback":""}]

# 4 - 本地化
execute if score @s temp matches 4 run tellraw @s [{"text":"","color":"#C3AC98"},{"text":"\n» ","bold":true},{"translate":"ms.credit.translator","fallback":"--"}," | ",{"translate":"ms.credit.3","fallback":"本地化"}]
execute if score @s temp matches 4 run tellraw @s [{"text":"","color":"white"},{"text":"» ","bold":true},{"translate":"ms.credit.4.desc","fallback":"[介绍你自己]"}]
execute if score @s temp matches 4 run tellraw @s [{"text":"✒ ","color":"gray"},{"translate":"ms.credit.4.note","fallback":"[留言或吐槽这些不像人话的文案]"}]

# 5 - 测试人员
execute if score @s temp matches 5 run tellraw @s [{"text":"","color":"white"},{"text":"\n» ","bold":true},{"translate":"ms.credit.tester.0","fallback":"以下名称皆按照首字母顺序排列"}]
execute if score @s temp matches 5 run tellraw @s [{"text":"","color":"#339A8D"},{"text":"» ","bold":true},{"translate":"ms.credit.tester.1","fallback":"Σ Reset 公测参与者"}]
execute if score @s temp matches 5 run tellraw @s [{"text":"A02wa","color":"white"},{"text":", ","color":"gray"},"Enmusubi",{"text":", ","color":"gray"},"Inkiss",{"text":", ","color":"gray"},"KSXG",{"text":", ","color":"gray"},"Last_Dust",{"text":", ","color":"gray"},"Nai_ShenShen",{"text":", ","color":"gray"},"YQ_CN"]
execute if score @s temp matches 5 run tellraw @s [{"text":"","color":"#FFCA95"},{"text":"» ","bold":true},{"translate":"ms.credit.tester.2","fallback":"Plus v2 公测参与者"}]
execute if score @s temp matches 5 run tellraw @s [{"text":"Bai_cu","color":"white"},{"text":", ","color":"gray"},"beiweide303",{"text":", ","color":"gray"},"LoyVol",{"text":", ","color":"gray"},"SaKuraYeager",{"text":", ","color":"gray"},"Mol1Sama",{"text":", ","color":"gray"},"Tian_wg",{"text":", ","color":"gray"},"XuanYu1725_XYU"]

# 6 - 以及……
execute if score @s temp matches 6 run tellraw @s [{"text":"","color":"#97B9E0"},{"text":"\n» ","bold":true},{"translate":"ms.credit.other","fallback":"以及……"}]
execute if score @s temp matches 6 run tellraw @s [{"text":"","color":"white"},{"text":"» ","bold":true},{"translate":"ms.credit.other.desc","fallback":"最重要的，万分感谢你的游玩与支持！"}]