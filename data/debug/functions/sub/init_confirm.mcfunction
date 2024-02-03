tellraw @s ["\n",{"text":" » ","bold":true,"color":"red"},{"translate":"ms.setting.init_confirm","fallback":"请谨慎操作！点击这句话以继续重置……","color":"red","clickEvent":{"action":"run_command","value":"/trigger interact_check set 200"}},"\n"]

playsound block.note_block.chime player @s ~ ~ ~ 1 1