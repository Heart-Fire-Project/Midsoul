schedule function main:tick/tick1 1t replace

# 处理玩家事件
execute as @a unless score @s leave_game matches -2147483648..2147483647 run function main:player_init
execute as @a unless score @s leave_game matches 0 run function main:player_enter
execute as @a[x=-1.5,y=-6,z=-1.5,dx=2,dy=2,dz=2] run function main:player_death
execute as @a[team=!admin,gamemode=creative] run function debug:join_admin

# 防止有人乱调全炸了
execute unless score $initcheck data matches 7419147 run function main:init

# 保护我方耕地
execute as @a at @s if block ~ ~-0.5 ~ farmland run effect give @s slow_falling 1 0 true
execute as @a at @s unless block ~ ~-0.5 ~ farmland run effect clear @s slow_falling

# 重置玩家部分数据
spawnpoint @a 0 -5 0
execute as @a unless score @s detect.interact matches 0 run scoreboard players enable @s detect.interact

# 隐身侦测
tag @a[nbt={active_effects:[{id:"minecraft:invisibility"}]}] add invisible
tag @a[gamemode=spectator] add invisible
execute as @a[tag=invisible] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] unless entity @s[gamemode=spectator] run tag @s remove invisible

# 定向至其他函数
function debug:tick1
execute if score $state data matches 99 run function main:state/99/tick1
execute if score $state data matches 4 run function main:state/4/tick1
execute if score $state data matches 3 run function main:state/3/tick1
execute if score $state data matches 2 run function main:state/2/tick1
execute if score $state data matches 1 run function main:state/1/tick1
execute if score $state data matches 0 run function main:state/0/tick1

# 如果仍有交互侦测值，则为无效
execute as @a unless score @s detect.interact matches 0 run scoreboard players set @s detect.interact 0