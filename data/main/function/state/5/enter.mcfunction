# 状态 5 - 结算
scoreboard players set $state data 5

# Bossbar 调整
bossbar set midsoul:heed players
bossbar set midsoul:warn players
bossbar set midsoul:info players

# 除非是守卫者没掉，大家都死掉
execute unless entity @a[team=guardian] as @a[team=soul] run function main:state/4/revive
execute as @a[team=soul] run function main:state/3/player/dead

# 顺便让守卫者别一直在擦刀状态
scoreboard players set @a[tag=game_player] state 0
execute if score $mode data matches 1..2 as @a[team=guardian] run function main:state/3/effect

# 重设计分板
scoreboard players set $5_ending tick.global 250

# 回归初心，最终循环
execute if score $mode data matches 1..2 run function main:state/5/loop/1