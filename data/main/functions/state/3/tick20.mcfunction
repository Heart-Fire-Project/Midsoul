# 第二状态 - 音效处理
execute at @a[scores={state=1,countdown=0..},team=soul] run playsound block.beacon.ambient player @a[scores={state=1,countdown=0..},team=soul]

# 灵气效果计时
scoreboard players remove @e[tag=blue,scores={countdown=1..}] countdown 1
execute as @e[tag=blue,scores={countdown=0}] run function main:state/3/remove_glow

# 双计时
execute if score $chest_summon countdown matches 1.. run scoreboard players remove $chest_summon countdown 1
scoreboard players remove @e[tag=track_mark] countdown 1
execute as @a[tag=game_player] at @s run function main:state/3/check_track
execute if score $chest_summon countdown matches 0 run function main:state/3/new_chest with storage ms:map

# 准备去逃避
execute if score $state data matches 3 run function main:state/3/check_end with storage ms:map