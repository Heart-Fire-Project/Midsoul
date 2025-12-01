# 告示牌交互侦测
execute if data storage ms:setting {setting_lock:false} as @a[scores={detect.interact=100..500}] run function main:state/0/trigger/check_setting
execute if data storage ms:setting {setting_lock:true} as @a[scores={detect.interact=100..500},team=admin] run function main:state/0/trigger/check_setting
scoreboard players set @a[scores={detect.interact=100..500}] detect.interact 0
execute as @a[scores={detect.interact=1..}] at @s run function main:state/0/trigger/check_else

# 跑酷计时
execute as @a[scores={state=1}] run scoreboard players add @s tick.parkour 1
execute as @a[scores={state=1}] run function main:state/0/parkour/timer
execute as @a[scores={state=0,tick.parkour=..-1}] run function main:state/0/parkour/new_pb

# 跑酷状态侦测
execute as @a[scores={state=1},x=3.2,y=0,z=-9,dx=0,dy=2,dz=2] run function main:state/0/parkour/cancel
execute as @a[scores={state=1},x=-9,y=0,z=5,dx=2,dy=2,dz=2] run function main:state/0/parkour/cancel
execute as @a[scores={state=0},x=4.8,y=0,z=-9,dx=0.5,dy=2,dz=2] run function main:state/0/parkour/start
execute as @a[scores={state=1},x=-7,y=17,z=-7,dx=1,dy=4,dz=1] at @s run function main:state/0/parkour/finish_5
execute as @a[scores={state=1},x=-6,y=39,z=22,dx=7,dy=4,dz=6] at @s run function main:state/0/parkour/finish_7

# 升级进程
scoreboard players remove @a[scores={tick.general=1..}] tick.general 1
scoreboard players add @a[scores={tick.general=..-1}] tick.general 2
execute as @a[scores={tick.general=..-1}] at @s run function main:state/0/exp/loop
execute as @a[scores={tick.general=0,exp.temp=1..}] at @s run function main:state/0/exp/loop

# 背包刷新
execute as @a[team=!admin] run function main:state/0/refresh/inventory

# 清除掉落物
kill @e[type=item,tag=!game_entity,tag=!lobby_entity,tag=!extra_entity,tag=!index_entity]