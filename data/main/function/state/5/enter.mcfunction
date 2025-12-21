# 阶段 5 - 结算
scoreboard players set $state data 5

# Bossbar 调整
bossbar set midsoul:heed players
bossbar set midsoul:warn players
bossbar set midsoul:info players

# 剩下的大家都死掉
execute as @a[team=soul] run function main:state/3/player/soul/dead

# 顺便让守卫者别一直在擦刀状态
scoreboard players set @a[tag=game_player] state 0
execute if data storage ms:mode {logic:"1"} as @a[team=guardian] run function main:state/3/player/effect

# 重设计分板
scoreboard players set $5_ending tick.general 240

# 回归初心，最终循环
execute if data storage ms:mode {logic:"1"} run function main:state/5/loop/1