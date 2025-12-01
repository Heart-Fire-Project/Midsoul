# 准备
team join prepare
playsound block.note_block.bit player @s 0 1000000 0 120000
execute if data storage ms:setting {game_lock:false} run function main:state/0/starting_check with storage ms:mode