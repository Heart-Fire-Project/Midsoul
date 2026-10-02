# 实际使用时调用此函数
execute as @a[tag=game_player] run function main:lib/action/bossbar/main

# 设置可见玩家
bossbar set midsoul:info players @a[tag=!warn,tag=!heed]
bossbar set midsoul:heed players @a[tag=!warn,tag=heed]
bossbar set midsoul:warn players @a[tag=warn]

# 教程
advancement grant @a[tag=heed] only main:tutorial/mechanic/1

# 清除标签
tag @a remove heed
tag @a remove warn