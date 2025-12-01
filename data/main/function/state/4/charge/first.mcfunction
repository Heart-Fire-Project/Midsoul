# 进入最终逃离
scoreboard players set $4_process tick.general 10000

# 加速！
execute as @a[team=soul,scores={state=0}] run attribute @s movement_speed base set 0.12
execute as @a[team=guardian,scores={state=0}] run attribute @s movement_speed base set 0.16

# 发光！
effect give @a[team=soul,scores={state=0}] glowing infinite 6 true

# 回响再加速！
execute if score $echo data matches 5 as @a[team=soul,scores={state=0}] run attribute @s movement_speed base set 0.132
execute if score $echo data matches 6 as @a[team=soul,scores={state=0}] run attribute @s movement_speed base set 0.24
execute if score $echo data matches 6 as @a[team=guardian,scores={state=0}] run attribute @s movement_speed base set 0.32

# 气息探测全失效！
bossbar set midsoul:info players @a
bossbar set midsoul:heed players
bossbar set midsoul:warn players