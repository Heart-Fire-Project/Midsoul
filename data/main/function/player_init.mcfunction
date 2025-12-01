# 获取玩家用户名
function base:get_playername {x:"0.5",y:"1.5",z:"23"}
data modify storage ms:temp target set from storage r7s:base playername
function main:player_init_real with storage ms:temp