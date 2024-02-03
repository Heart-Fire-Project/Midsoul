# 最后的计时
execute if score $5_ending countdown matches 1.. run scoreboard players remove $5_ending countdown 1
execute if score $5_ending countdown matches 0.. run function main:state/5/process