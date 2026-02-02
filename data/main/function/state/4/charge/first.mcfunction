# 进入最终逃离
scoreboard players set $4_process tick.general 10000

# 加速！
execute as @a[team=soul,scores={state=0}] run attribute @s movement_speed base set 0.12
execute as @a[team=guardian,scores={state=0}] run attribute @s movement_speed base set 0.16

# 发光！
effect give @a[team=soul,scores={state=0}] glowing infinite 6 true

# 回响再加速！
execute if score $echo data matches 6 as @a[tag=game_player] run attribute @s movement_speed modifier remove ms:echo
execute if score $echo data matches 6 as @a[tag=game_player,scores={state=0}] run attribute @s movement_speed modifier add ms:echo 0.1 add_value

# 气息探测全失效！
bossbar set midsoul:info players @a
bossbar set midsoul:heed players
bossbar set midsoul:warn players

# 教程！
advancement grant @a[team=soul] only main:tutorial/player/4