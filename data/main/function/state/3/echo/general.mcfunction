# 强制性引导 | 剩余灵魂数小于等于 2 时失效
execute if score $echo data matches 1 if score $alive data matches ..2 if score $3_echo tick.global matches 0.. run function main:state/3/echo/01f
execute if score $echo data matches 1 if score $3_echo tick.global matches 0 run function main:state/3/echo/01

# 个雷劈落来 | 闪电召唤数为碎片生成数的 20%
execute if score $echo data matches 5 if score $3_echo tick.global matches 5 store result storage ms:temp num short 1 run data get storage ms:map shard_summon 0.2
execute if score $echo data matches 5 if score $3_echo tick.global matches 5 run function main:state/3/echo/05a with storage ms:temp
execute if score $echo data matches 5 if score $3_echo tick.global matches 1..5 run function main:state/3/echo/05b
execute if score $echo data matches 5 if score $3_echo tick.global matches 0 run function main:state/3/echo/05

# 命运交响曲 | 有提示音……有人会用这战略？
execute if score $echo data matches 8 if score $3_echo tick.global matches 5 run function main:state/3/echo/warn
execute if score $echo data matches 8 if score $3_echo tick.global matches 0 run function main:state/3/echo/08