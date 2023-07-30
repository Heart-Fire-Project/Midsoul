# 初始状态
bossbar set midsoul:game color white
bossbar set midsoul:game style progress 
bossbar set midsoul:game max 260

# 加分核心
execute unless score $bossbar_anime temp matches 1..260 run scoreboard players set $bossbar_anime temp 0
execute if score $bossbar_anime temp matches 0..260 run scoreboard players add $bossbar_anime temp 1
execute if score $bossbar_anime temp matches 261.. run scoreboard players reset $bossbar_anime temp

# 随时同步数值
execute store result bossbar midsoul:game value run scoreboard players get $bossbar_anime temp

# 按照进度给标题
execute if score $bossbar_anime temp matches 1..140 run bossbar set midsoul:game name {"translate":"ms.bossbar.kit","fallback":"正在分配职业 » %s 秒后开始","with":[{"score":{"objective":"countdown","name":"$game_start"}}]}
execute if score $bossbar_anime temp matches 141..230 run bossbar set midsoul:game name {"translate":"ms.bossbar.talent","fallback":"正在分配技能与天赋 » %s 秒后开始","with":[{"score":{"objective":"countdown","name":"$game_start"}}]}
execute if score $bossbar_anime temp matches 231..280 run bossbar set midsoul:game name {"translate":"ms.bossbar.initready","fallback":"游戏初始化完成 » %s 秒后开始","with":[{"score":{"objective":"countdown","name":"$game_start"}}]}

# 进入下一阶段
#@State 2 - 游戏开始