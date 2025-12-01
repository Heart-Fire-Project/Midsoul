# 计算守卫者所需人数
scoreboard players set $player temp 0
execute as @a[tag=game_player] run scoreboard players add $player temp 1
scoreboard players operation $player temp /= #2 data

# 计算踢出守卫者人数
scoreboard players set $guardian temp 0
execute as @a[scores={state=2}] run scoreboard players add $guardian temp 1
execute store result storage ms:temp num int 1 run scoreboard players operation $guardian temp -= $player temp
execute if score $guardian temp matches 1.. run data merge storage ms:temp {from:"2",to:"0"}
execute if score $guardian temp matches 1.. run function main:state/1/role/random/2a with storage ms:temp

# 计算踢出灵魂人数
scoreboard players set $soul temp 0
execute as @a[scores={state=1}] run scoreboard players add $soul temp 1
execute store result storage ms:temp num int 1 run scoreboard players operation $soul temp -= $player temp
execute if score $soul temp matches 1.. run data merge storage ms:temp {from:"1",to:"0"}
execute if score $soul temp matches 1.. run function main:state/1/role/random/2a with storage ms:temp

# 计算守卫仍需的人数
execute if score $guardian temp matches ..-1 store result storage ms:temp num int 1 run scoreboard players operation $guardian temp *= #-1 data
execute if score $guardian temp matches 1.. run data merge storage ms:temp {from:"0",to:"2"}
execute if score $guardian temp matches 1.. run function main:state/1/role/random/2a with storage ms:temp

# 剩下的自然就全是灵魂
team join guardian @a[scores={state=2}]
team join soul @a[team=prepare]