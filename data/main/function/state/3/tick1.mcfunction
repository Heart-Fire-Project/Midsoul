# 通用
function main:lib/event/universal/tick1

# 刷新 Bossbar
function main:state/3/bossbar/general

# 刷新物品栏
execute as @a[tag=game_player] run function main:state/3/inventory_pre

# 蹲下交互侦测
execute as @a[tag=game_player,scores={state=0}] at @s run function main:state/3/interaction/check
scoreboard players remove @a[scores={detect.sneak=1..}] detect.sneak 1

# 刷新经验条
execute as @a[tag=game_player] run function main:state/3/set_exp

# 计时部分
scoreboard players add $3_process tick.general 1

# 进程判定
function main:state/3/check_end