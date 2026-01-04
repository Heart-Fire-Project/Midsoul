# 通用每刻刷新
# 对剩余玩家进行一次计数，以供函数使用
scoreboard players reset $alive data
execute as @a[team=soul] run scoreboard players add $alive data 1
scoreboard players reset $undying data
execute as @a[team=soul,scores={state=0}] run scoreboard players add $undying data 1

# 能力施放与冷却
execute as @a[team=soul,tag=!item_on,scores={state=0}] at @s run function main:lib/ability/item/pend_on
execute as @a[tag=game_player,tag=!skill_on,scores={state=0}] at @s run function main:lib/ability/skill/pend_on
execute as @a[tag=game_player,tag=!talent_1_on,scores={state=0}] at @s run function main:lib/ability/talent/pend_on {num:"1"}
execute as @a[tag=game_player,tag=!talent_2_on,scores={state=0}] at @s run function main:lib/ability/talent/pend_on {num:"2"}

# 能力持续性效果
function main:lib/ability/tick1

# 能力结束与判定
execute as @a[team=soul,tag=item_on,scores={state=0}] at @s run function main:lib/ability/item/pend_off
execute as @a[tag=game_player,tag=skill_on,scores={state=0}] at @s run function main:lib/ability/skill/pend_off
execute as @a[tag=game_player,tag=talent_1_on,scores={state=0}] at @s run function main:lib/ability/talent/pend_off {num:"1"}
execute as @a[tag=game_player,tag=talent_2_on,scores={state=0}] at @s run function main:lib/ability/talent/pend_off {num:"2"}

# 回响部分
execute unless score $echo data matches 0 run function main:lib/echo/tick1

# 地图特殊机制，一般是即时效果
execute if score $state data matches 2.. run function main:lib/map/tick1/general

# 计时部分
scoreboard players add $stat_gametime tick.general 1
scoreboard players add @a[tag=game_player] temp.time 1
scoreboard players remove @a[scores={tick.enhance=1..}] tick.enhance 1
scoreboard players remove @a[scores={tick.disable=1..}] tick.disable 1
scoreboard players remove @a[scores={tick.silent=1..}] tick.silent 1
scoreboard players remove @a[scores={tick.invincible=1..}] tick.invincible 1
effect give @a[scores={tick.invincible=20..}] resistance 1 4
scoreboard players add $status_color tick.general 1
execute if score $status_color tick.general matches 10.. run scoreboard players set $status_color tick.general -8
scoreboard players operation $color temp = $status_color tick.general
execute if score $color temp matches ..-1 run scoreboard players operation $color temp *= #-1 data
execute as @a unless score @s tick.using matches 1.. run function main:lib/ability/base/status

# 其他的部分
execute as @a[team=soul,scores={detect.sleep=1..}] run function main:lib/event/wake_up
kill @e[type=item,tag=!game_entity]
execute as @a at @s if block ~ ~ ~ powder_snow run scoreboard players reset @s tick.off_ground
execute as @a at @s if block ~ ~ ~ #geode_invalid_blocks run scoreboard players reset @s tick.off_ground
execute as @a at @s if block ~ ~ ~ #climbable run scoreboard players reset @s tick.off_ground
execute as @a unless data entity @s {OnGround:0b} run scoreboard players reset @s tick.off_ground
scoreboard players reset @a[gamemode=!adventure] tick.off_ground
execute as @a if data entity @s {OnGround:0b} run scoreboard players add @s tick.off_ground 1