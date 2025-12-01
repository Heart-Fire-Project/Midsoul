# 注意该函数以碎片为执行者
function main:state/3/event/firework

# 随机选择归属
tag @r[scores={talent.107=1..}] add T107s
scoreboard players set @n[tag=T107s,scores={talent_1=7,talent.107=3}] tick.talent_1 80000
scoreboard players set @n[tag=T107s,scores={talent_2=7,talent.107=3}] tick.talent_2 80000
scoreboard players remove @n[tag=T107s] talent.107 1
tag @a remove T107s