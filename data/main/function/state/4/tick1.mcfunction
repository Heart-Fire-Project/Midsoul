# 通用
function main:lib/event/universal/tick1

# 刷新 Bossbar
function main:state/4/bossbar/pend

# 刷新物品栏
execute as @a[tag=game_player] run function main:state/3/inventory

# 蹲下交互侦测
execute as @a[tag=game_player,scores={state=0}] at @s run function main:state/3/interaction/check
execute as @a[team=soul,scores={state=0}] at @s run function main:state/4/charge/check

# 刷新传送门开启进度
scoreboard players add $4_color tick.general 1
execute if score $4_color tick.general matches 16.. run scoreboard players set $4_color tick.general -14
scoreboard players operation $value temp = $4_color tick.general
execute if score $value temp matches ..0 run scoreboard players operation $value temp *= #-1 data
execute as @e[tag=purple,tag=!open_purple] at @s run function main:state/4/charge/settle
execute as @e[tag=purple] at @s run function main:state/4/set_progress

# 刷新经验条
execute as @a[tag=game_player] at @s run function main:state/4/set_exp

# 计时部分
scoreboard players set @a[team=guardian] tick.enhance 3
scoreboard players remove $4_portal tick.general 1
scoreboard players add $4_process tick.general 1

# 其他的部分
execute if entity @e[tag=open_purple] run effect give @e[team=soul,scores={state=0}] glowing infinite 6 true
execute as @a[team=soul,scores={state=0}] at @s if entity @e[tag=open_purple,distance=..0.7] run function main:state/4/revive
execute at @e[tag=open_purple] run particle end_rod ~ ~1.6 ~ 0 24 0 0 10 force @a
execute at @e[tag=purple_3rd] unless data entity @n[tag=purple_3rd] Glowing if entity @a[team=soul,distance=..3.5] run function main:state/4/announce_door

# 最后的侦测
function main:state/4/check_end