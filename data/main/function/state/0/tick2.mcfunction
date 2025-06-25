# 粒子特效
particle campfire_cosy_smoke -6.0 17.7 -6.0 0.1 0.1 0.1 0.1 96

# 额外区域往返侦测
execute as @a[x=-8,y=-24,z=-8,dx=3,dy=5,dz=3] run function main:state/0/extra/enter
execute as @a[x=-1003,y=-2,z=-1038,dx=2,dy=2,dz=5] at @s run tp @s ~994 ~2 ~1046

# 三层跳板侦测
effect give @a[x=-1,y=6,z=-1,dx=1,dy=1,dz=1] jump_boost 1 5 true
execute as @a[scores={state=0}] unless entity @a[x=-1,y=6,z=-1,dx=1,dy=1,dz=1] run effect clear @s jump_boost

# 隐藏跑酷终点返回侦测
execute as @a[x=-14,y=39,z=3,dx=2,dy=2,dz=5] at @s run tp @s ~5 ~-39 ~6

# 普通跑酷终点屏障检测
execute if score $0_parkour tick.global matches 1.. run scoreboard players remove $0_parkour tick.global 1
execute if score $0_parkour tick.global matches ..0 run fill -6 16 -6 -7 17 -7 barrier

# 返回区门侦测 | 按照开关门 0.7s 计算
execute if score $0_gate tick.global matches 1.. run scoreboard players remove $0_gate tick.global 1
execute if block -8 6 8 redstone_block if entity @a[x=-9,y=0,z=8,dx=2,dy=2,dz=7] unless score $0_gate tick.global matches 1.. run scoreboard players set $0_gate tick.global 15
execute if block -8 6 8 redstone_block if entity @a[x=-9,y=0,z=8,dx=2,dy=2,dz=7] unless score $0_gate tick.global matches 1..14 run setblock -8 6 8 air
execute if block -8 6 8 air unless entity @a[x=-9,y=0,z=8,dx=2,dy=2,dz=7] unless score $0_gate tick.global matches 1.. run scoreboard players set $0_gate tick.global 15
execute if block -8 6 8 air unless entity @a[x=-9,y=0,z=8,dx=2,dy=2,dz=7] unless score $0_gate tick.global matches 1..14 run setblock -8 6 8 redstone_block

# 弃权区门侦测 | 按照开关门 0.3s 计算
execute if score $0_door tick.global matches 1.. run scoreboard players remove $0_door tick.global 1
execute if block 10 5 7 redstone_block if entity @a[x=7,y=4,z=7,dx=1,dy=1,dz=5] unless score $0_door tick.global matches 1.. run scoreboard players set $0_door tick.global 25
execute if block 10 5 7 redstone_block if entity @a[x=7,y=4,z=7,dx=1,dy=1,dz=5] unless score $0_door tick.global matches 1..6 run setblock 10 5 7 air
execute if block 10 5 7 air unless entity @a[x=7,y=4,z=7,dx=1,dy=1,dz=5] unless score $0_door tick.global matches 1.. run scoreboard players set $0_door tick.global 7
execute if block 10 5 7 air unless entity @a[x=7,y=4,z=7,dx=1,dy=1,dz=5] unless score $0_door tick.global matches 1..6 run setblock 10 5 7 redstone_block

# 数据查询
execute as @p[x=-990,y=-1,z=-1001,dx=0,dy=1.2,dz=0] run tag @s add stat_query
tag @a[tag=!stat_query] remove quering
execute as @a[tag=stat_query,tag=!quering] run function main:state/0/extra/query
tag @a remove stat_query
execute unless entity @a[x=-990,y=-1,z=-1001,dx=0,dy=1.2,dz=0] run setblock -990 -2 -1001 redstone_lamp[lit=false]

# 里程碑自动刷新
execute as @a[x=-1000,y=0,z=-1000,distance=..50] run function main:state/0/extra/milestone

# 开始游戏侦测
team join spectator @a[team=!admin,team=!prepare]
function main:state/0/starting_check with storage ms:mode
function main:state/0/bossbar with storage ms:mode

# 额外区域粒子效果
execute as @e[tag=particle_1] at @s run particle electric_spark ~ ~0.2 ~ 0.1 0.1 0.1 0 1
execute as @e[tag=particle_2] at @s run particle glow ~ ~0.2 ~ 0.15 0.15 0.15 0 1
execute as @e[tag=particle_3] at @s run particle ominous_spawning ~ ~0.2 ~ 0.15 0.05 0.15 0 1
execute as @e[tag=particle_4] at @s run particle wax_on ~ ~0.2 ~ 0.15 0.15 0.15 1 1
execute as @e[tag=particle_5] at @s run particle end_rod ~ ~0.5 ~ 0 0 0 0 1
execute as @e[tag=particle_6] at @s run particle witch ~ ~0.2 ~ 0.15 0.05 0.15 0 1
execute as @e[tag=particle_7] at @s run particle dust{color:[5,5,5],scale:1} ~ ~0.2 ~ 0.1 0.1 0.1 0 2
execute as @e[tag=particle_8] at @s run particle cherry_leaves ~ ~0.4 ~ 0.12 0.12 0.12 0 1
execute as @e[tag=particle_9] at @s run particle flame ~ ~0.2 ~ 0.12 0.12 0.12 0 1
execute as @e[tag=particle_9] at @s run particle soul_fire_flame ~ ~0.2 ~ 0.1 0.1 0.1 0 1