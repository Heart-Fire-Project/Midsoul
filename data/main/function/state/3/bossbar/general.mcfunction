# 样式处理
execute if score $3_process tick.general matches ..12000 run function main:state/3/bossbar/normal with storage ms:map
execute if score $3_process tick.general matches 12001 run function main:state/3/bossbar/change
execute if score $3_process tick.general matches 12001.. run function main:state/3/bossbar/emerge

# 设置范围
function main:lib/action/bossbar