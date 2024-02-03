# 每秒自动进行一次，以免漏掉了什么
function main:state/0/prepare_count with storage ms:mode

# 开始游戏倒计时
execute if score $gamelock data matches 1 run scoreboard players set $0_start countdown 11
$execute if score $prepare data matches $(player_start).. unless score $0_start countdown matches 0 run scoreboard players remove $0_start countdown 1
execute if score $0_start countdown matches 1..3 run playsound minecraft:entity.arrow.hit_player player @a 0 1000000 0 1000000 0.5
execute if score $0_start countdown matches 0 run playsound minecraft:entity.arrow.hit_player player @a 0 1000000 0 1000000
execute if score $0_start countdown matches 0 run function main:state/1/enter