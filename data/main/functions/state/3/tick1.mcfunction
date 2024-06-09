# 刷新 Bossbar
execute if score $state data matches 3 run execute if score $play_time temp matches ..24000 run function main:state/3/bossbar/normal with storage ms:map
execute if score $state data matches 3 run execute if score $play_time temp matches 24001.. run function main:state/3/bossbar/special
execute if score $state data matches 3 run execute if score $play_time temp matches 24001 run function main:state/3/bossbar/change

# 侦测三项开启
execute as @a[tag=game_player] at @s run function main:state/3/skill/check_on
execute as @a[tag=game_player] at @s run function main:state/3/talent/check_on {"num":1}
execute as @a[tag=game_player] at @s run function main:state/3/talent/check_on {"num":2}
execute as @a[team=soul] at @s run function main:state/3/item/check_on

# 侦测三项结束
execute as @a[tag=game_player] at @s run function main:state/3/skill/check_off
execute as @a[tag=game_player] at @s run function main:state/3/talent/check_off {"num":1}
execute as @a[tag=game_player] at @s run function main:state/3/talent/check_off {"num":2}
execute as @a[team=soul] at @s run function main:state/3/item/check_off

# 检查双倍伤害
scoreboard players remove @a[scores={double_damage=1..}] double_damage 1
tag @a[scores={double_damage=0}] remove double_damage

# 刷新物品栏
execute as @a[tag=game_player] run function main:state/3/inventory_pre

# 检查收集
execute as @a[tag=game_player,scores={state=0}] run function main:state/3/check_surround

# 统计项目
scoreboard players add $play_time temp 1
scoreboard players add @a[team=soul] stat_temp_play_time 1
scoreboard players add @a[team=protect] stat_temp_play_time 1

# 诅咒效果触发
execute at @e[tag=cursed] run function main:state/3/cursed_chest

# 刷新经验条
execute as @a[tag=game_player] run function main:state/3/set_exp

# 回响 - 后续实装
# execute if score $echo data matches 1 run function main:state/3/echo/1

# 其他的部分
execute as @a[scores={sleep_detect=1..},team=soul] run function main:state/3/wake_up
stopsound @a * entity.player.levelup
kill @e[type=item,tag=!game_entity]