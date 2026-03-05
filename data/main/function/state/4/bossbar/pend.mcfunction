# 还分流
execute unless entity @e[tag=open_purple] run function main:state/4/bossbar/a
execute if entity @e[tag=open_purple] run function main:state/4/bossbar/b