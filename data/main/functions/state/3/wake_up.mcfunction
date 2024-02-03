# 你这个年纪，怎么睡得着啊
damage @s 1 magic
tellraw @s [{"text":" » ","bold":true,"color":"red"},{"translate":"ms.info.sleep","fallback":"还不到睡觉的时候……希望痛觉能让你清醒清醒","bold":false}]

scoreboard players reset @s sleep_detect