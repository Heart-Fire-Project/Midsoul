# 获取玩家用户名
function base:get_playername {x:"0",y:"-7",z:"0"}
data modify storage ms:temp target set from storage r7s:base playername
function main:player_init_real with storage ms:temp