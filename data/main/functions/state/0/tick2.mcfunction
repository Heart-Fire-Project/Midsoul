particle dust 0.2 0.2 0.2 1 5.5 240.4 21.5 0.3 0.5 0.3 0.1 7 force @a

function main:state/0/bossbar with storage ms:mode

# 数据查询
execute as @a[x=9,y=241,z=15,dx=1,dy=1.4,dz=1,limit=1] run tag @s add stat_query
tag @a[tag=!stat_query] remove quering
execute as @a[tag=stat_query,tag=!quering] run function main:state/0/stat_query
tag @a remove stat_query
execute unless entity @a[x=9,y=241,z=15,dx=1,dy=1.4,dz=1] run setblock 9 240 15 redstone_lamp[lit=false]