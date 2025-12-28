# 强制性引导 | 剩余灵魂数小于等于 2 时失效
execute if score $echo data matches 1 if score $alive data matches ..2 if score $echo tick.general matches 0.. run function main:lib/echo/01f
execute if score $echo data matches 1 if score $echo tick.general matches 0 run function main:lib/echo/01

# 天幕降落雷 | 闪电召唤数为碎片生成数的 20%
execute if score $echo data matches 4 if score $echo tick.general matches 5 store result storage ms:temp num int 1 run data get storage ms:map shard_summon 0.2
execute if score $echo data matches 4 if score $echo tick.general matches 5 run function main:lib/echo/04a with storage ms:temp
execute if score $echo data matches 4 if score $echo tick.general matches 1..5 run function main:lib/echo/04b
execute if score $echo data matches 4 if score $echo tick.general matches 0 run function main:lib/echo/04

# 命运交响曲 | 有提示音……有人会用这战略？
execute if score $echo data matches 7 if score $echo tick.general matches 5 run function main:lib/echo/warn
execute if score $echo data matches 7 if score $echo tick.general matches 0 run function main:lib/echo/07