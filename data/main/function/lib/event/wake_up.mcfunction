# 你这个年纪，怎么睡得着啊
damage @s 0.01 magic
tellraw @s [{text:"» ",bold:true,color:"red"},{translate:"ms.info.no_sleep",fallback:"还不到睡觉的时候……",bold:false}]

scoreboard players reset @s detect.sleep