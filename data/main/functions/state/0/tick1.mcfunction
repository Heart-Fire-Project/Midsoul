tp @a[x=-500,y=0,z=-500,dx=1000,dy=200,dz=1000,team=!admin] 0 240 0 -45 0
execute as @a[team=!admin] at @s run function main:state/0/refresh/inventory
team join spectator @a[team=!admin,team=!prepare]

# 设置模块
execute as @a at @s run function main:state/0/sign_interact

# 经验结算
scoreboard players remove @a[scores={countdown=1..}] countdown 1
execute as @a[scores={exp_temp=1..,countdown=..0}] run function main:state/0/exp/process