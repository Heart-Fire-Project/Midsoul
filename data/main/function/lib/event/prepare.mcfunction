# 准备
team join prepare
playsound block.note_block.bit player @s 0 1000000 0 120000
execute if data storage ms:setting {game_lock:false} run function main:state/0/starting_check with storage ms:mode
title @s[tag=check_prepare] actionbar [{text:"▹ ",color:"#96D3D8"},{translate:"ms.info.auto_prepare.2",fallback:"已手动准备，将不再生效"}," ◃"]
tag @s remove check_prepare