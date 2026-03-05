# 取消
team join spectator
playsound block.note_block.hat player @s 0 1000000 0 120000
execute if data storage ms:setting {game_lock:false} run function main:state/0/starting_check with storage ms:mode