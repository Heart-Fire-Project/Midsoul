# 对剩余玩家进行一次计数，以供函数使用
scoreboard players reset $alive data
execute as @a[team=soul] run scoreboard players add $alive data 1

# 刷新 Bossbar
function main:state/4/bossbar/pend

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
execute as @a[team=soul,scores={state=0}] at @s run function main:state/4/charge/check
scoreboard players remove @a[scores={sneak_time=1..}] sneak_time 1

# 刷新传送门开启进度
scoreboard players add $4_process_color countdown 1
execute as @e[tag=purple,tag=!open_purple] at @s run function main:state/4/charge/settle
execute as @e[tag=purple] at @s run function main:state/4/set_progress

# 刷新经验条
execute as @a[tag=game_player] at @s run function main:state/4/set_exp

# 计时部分
scoreboard players remove $4_portal countdown 1
scoreboard players add $stat_gametime countdown 1
scoreboard players add $4_process countdown 1
scoreboard players set @a[team=guardian] damage_tick 100
scoreboard players add @a[tag=game_player] temp.time 1

# 其他的部分
execute if entity @e[tag=open_purple] run effect give @e[team=soul,scores={state=0}] glowing infinite 6 true
execute as @a[team=soul,scores={state=0}] at @s if entity @e[tag=open_purple,distance=..0.5] run function main:state/4/revive
execute as @a[scores={sleep_detect=1..},team=soul] run function main:state/3/event/wake_up
kill @e[type=item,tag=!game_entity]
execute as @a at @s unless block ~ ~ ~ air run scoreboard players reset @s off_ground
execute as @a unless data entity @s {OnGround:0b} run scoreboard players reset @s off_ground
scoreboard players reset @a[gamemode=spectator] off_ground
execute as @a if block ~ ~ ~ air if data entity @s {OnGround:0b} run scoreboard players add @s off_ground 1

# 最后的侦测
function main:state/4/check_end