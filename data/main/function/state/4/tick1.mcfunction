# 刷新 Bossbar
function main:state/4/bossbar/pend

# 能力施放与冷却
execute as @a[team=soul,tag=!item_on,scores={state=0}] at @s run function main:state/3/ability/item/pend_on
execute as @a[tag=game_player,tag=!skill_on,scores={state=0}] at @s run function main:state/3/ability/skill/pend_on
execute as @a[tag=game_player,tag=!talent_1_on,scores={state=0}] at @s run function main:state/3/ability/talent/pend_on {num:"1"}
execute as @a[tag=game_player,tag=!talent_2_on,scores={state=0}] at @s run function main:state/3/ability/talent/pend_on {num:"2"}

# 能力持续性效果
function main:state/3/ability/general

# 能力结束与判定
execute as @a[team=soul,tag=item_on,scores={state=0}] at @s run function main:state/3/ability/item/pend_off
execute as @a[tag=game_player,tag=skill_on,scores={state=0}] at @s run function main:state/3/ability/skill/pend_off
execute as @a[tag=game_player,tag=talent_1_on,scores={state=0}] at @s run function main:state/3/ability/talent/pend_off {num:"1"}
execute as @a[tag=game_player,tag=talent_2_on,scores={state=0}] at @s run function main:state/3/ability/talent/pend_off {num:"2"}

# 刷新物品栏
execute as @a[tag=game_player] run function main:state/3/inventory_pre

# 蹲下交互侦测
execute as @a[tag=game_player,scores={state=0}] at @s run function main:state/3/interaction/check
execute as @a[team=soul,scores={state=0}] at @s run function main:state/4/charge/check
scoreboard players remove @a[scores={detect.sneak=1..}] detect.sneak 1

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
scoreboard players remove $4_portal tick.general 1
scoreboard players add $stat_gametime tick.general 1
scoreboard players add $4_process tick.general 1
scoreboard players add @a[tag=game_player] temp.time 1
scoreboard players remove @a[scores={tick.enhance=1..}] tick.enhance 1
scoreboard players set @a[team=guardian] tick.enhance 100
scoreboard players remove @a[scores={tick.invincible=1..}] tick.invincible 1
effect give @a[scores={tick.invincible=20..}] resistance 1 4
tag @a[tag=rated_victim,scores={tick.invincible=..138}] remove rated_victim

# 其他的部分
execute if entity @e[tag=open_purple] run effect give @e[team=soul,scores={state=0}] glowing infinite 6 true
execute as @a[team=soul,scores={state=0}] at @s if entity @e[tag=open_purple,distance=..0.7] run function main:state/4/revive
execute as @e[tag=open_purple] at @s run particle end_rod ~ ~1.6 ~ 0 24 0 0 10 force @a
execute at @e[tag=purple_3rd] unless data entity @n[tag=purple_3rd] Glowing if entity @a[team=soul,distance=..3.5] run function main:state/4/announce_door
execute as @a[scores={detect.sleep=1..},team=soul] run function main:state/3/event/wake_up
kill @e[type=item,tag=!game_entity]
execute as @a at @s if block ~ ~ ~ water run scoreboard players reset @s tick.off_ground
execute as @a at @s if block ~ ~ ~ lava run scoreboard players reset @s tick.off_ground
execute as @a at @s if block ~ ~ ~ powder_snow run scoreboard players reset @s tick.off_ground
execute as @a unless data entity @s {OnGround:0b} run scoreboard players reset @s tick.off_ground
scoreboard players reset @a[gamemode=spectator] tick.off_ground
execute as @a if data entity @s {OnGround:0b} run scoreboard players add @s tick.off_ground 1

# 最后的侦测
function main:state/4/check_end