# 状态 5 - 结算
scoreboard players set $state data 5

# Bossbar 调整
bossbar set midsoul:heed players
bossbar set midsoul:warn players
bossbar set midsoul:info players

# 除非是守卫者没掉，大家都死掉
execute unless entity @a[team=protect] as @a[team=soul] run function main:state/4/finish
execute as @a[team=soul] run function main:state/3/attack/dead

# 重设计分板
scoreboard players set $5_ending countdown 200