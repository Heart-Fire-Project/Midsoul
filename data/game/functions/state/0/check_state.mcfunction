# 检测准备人数
# 重置人数
scoreboard players set $prepare data 0
team join unready @a[team=!admin]

# 数人头
team join prepare @e[x=-4,y=257,z=1,dx=3,dy=3,dz=3,team=!admin]
execute as @e[team=prepare] run scoreboard players add $prepare data 1

execute unless score $gamelock data matches 1 run function game:state/0/ready_process

# 检测管理员
title @a[x=1,y=257,z=-4,dx=3,dy=3,dz=3,team=!admin] actionbar [{"text":"调整为 创造模式 以进行设置调整","color":"light_purple"}]
execute as @a[x=1,y=257,z=-4,dx=3,dy=3,dz=3,gamemode=creative,team=!admin] run function game:state/0/admin_process