# 进入判定
execute as @e[tag=marker_black] at @s run execute as @a[team=alive] run tag @s remove in_locker
execute as @e[tag=marker_black] at @s run execute as @a[dy=-1,team=alive] run tag @s add in_locker

# 效果触发
function game:state/3/give_effect

# 教程触发
execute if entity @s[tag=!in_locker,tag=!near_locker_tr] run function base:tutorial/near_locker
execute if entity @s[tag=in_locker,tag=!enter_locker_tr] run function base:tutorial/enter_locker