# 分流
execute if score $state data matches 4 run function main:state/4/effect/pend
execute if score $state data matches 3 run function main:state/3/effect