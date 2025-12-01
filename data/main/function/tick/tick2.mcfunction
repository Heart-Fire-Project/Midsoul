schedule function main:tick/tick2 2t replace

# 掐掉通常的音乐声
stopsound @a music

# 玩家粒子
execute as @a[team=soul,tag=!invisible] run function main:lib/particle {range:"@a[team=!guardian]"}
execute as @a[team=guardian,tag=!invisible] run function main:lib/particle {range:"@a[team=!soul]"}
execute as @a[team=!guardian,team=!soul,tag=!invisible] run function main:lib/particle {range:"@a"}

# 定向至其他函数
function debug:tick2
execute if score $state data matches 3..4 run function main:state/3/tick2
execute if score $state data matches 0 run function main:state/0/tick2

# 教程
execute as @a[tag=game_player] at @s if entity @e[tag=blue,distance=..3] run advancement grant @s only main:tutorial/interact/1
execute as @a[tag=game_player] at @s if entity @e[tag=gray,distance=..3] run advancement grant @s only main:tutorial/interact/3