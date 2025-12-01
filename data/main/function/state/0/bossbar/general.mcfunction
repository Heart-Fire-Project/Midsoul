# 分流处理，避免偶现闪烁
execute if data storage ms:setting {game_lock:false} run function main:state/0/bossbar/normal with storage ms:mode
execute if data storage ms:setting {game_lock:true} run function main:state/0/bossbar/locked