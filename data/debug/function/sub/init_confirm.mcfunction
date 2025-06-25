tellraw @s [{"text":"\n» ","bold":true,"color":"red"},{"translate":"ms.debug.init_confirm","fallback":"请谨慎操作！点击这句话以继续重置……","bold":false,"clickEvent":{"action":"run_command","value":"/trigger detect.interact set -599"}}]

playsound block.note_block.chime player @s 0 1000000 0 1000000