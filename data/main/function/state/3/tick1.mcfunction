# 刷新 Bossbar
function main:state/3/bossbar/general

# 能力施放与冷却
execute as @a[team=soul,tag=!item_on,scores={state=0}] at @s run function main:state/3/ability/item/pend_on
execute as @a[tag=game_player,tag=!skill_on,scores={state=0}] at @s run function main:state/3/ability/skill/pend_on
execute as @a[tag=game_player,tag=!talent_1_on,scores={state=0}] at @s run function main:state/3/ability/talent/pend_on {"num":1}
execute as @a[tag=game_player,tag=!talent_2_on,scores={state=0}] at @s run function main:state/3/ability/talent/pend_on {"num":2}

# 能力持续性效果
function main:state/3/ability/general

# 能力结束与判定
execute as @a[team=soul,tag=item_on,scores={state=0}] at @s run function main:state/3/ability/item/pend_off
execute as @a[tag=game_player,tag=skill_on,scores={state=0}] at @s run function main:state/3/ability/skill/pend_off
execute as @a[tag=game_player,tag=talent_1_on,scores={state=0}] at @s run function main:state/3/ability/talent/pend_off {"num":1}
execute as @a[tag=game_player,tag=talent_2_on,scores={state=0}] at @s run function main:state/3/ability/talent/pend_off {"num":2}

# 刷新物品栏
execute as @a[tag=game_player] run function main:state/3/inventory_pre

# 蹲下交互侦测
execute as @a[tag=game_player,scores={state=0}] at @s run function main:state/3/interaction/check
scoreboard players remove @a[scores={detect.sneak=1..}] detect.sneak 1

# 刷新经验条
execute as @a[tag=game_player] run function main:state/3/set_exp

# 计时部分
scoreboard players add $stat_gametime tick.global 1
scoreboard players add $3_process tick.global 1
scoreboard players remove @a[scores={tick.enhance=1..}] tick.enhance 1
scoreboard players add @a[tag=game_player] temp.time 1

# 其他的部分
execute as @a[scores={detect.sleep=1..},team=soul] run function main:state/3/event/wake_up
kill @e[type=item,tag=!game_entity]
execute as @a at @s unless block ~ ~ ~ air run scoreboard players reset @s tick.off_ground
execute as @a unless data entity @s {OnGround:0b} run scoreboard players reset @s tick.off_ground
scoreboard players reset @a[gamemode=spectator] tick.off_ground
execute as @a[tag=game_player] if block ~ ~ ~ air if data entity @s {OnGround:0b} run scoreboard players add @s tick.off_ground 1

# 进程判定
execute if score $mode data matches 1 run function main:state/3/check_end/1