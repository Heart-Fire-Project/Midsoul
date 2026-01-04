# 倒计时通项
$execute if score $prepare data matches $(start).. store result bossbar midsoul:info value run scoreboard players get $0_start tick.general
$execute if score $prepare data matches $(start).. run bossbar set midsoul:info max 20

# 正常倒计时
$execute if score $prepare data matches $(start)..10 run bossbar set midsoul:info color blue
$execute if score $0_start tick.general matches ..20 if score $prepare data matches $(start)..10 run bossbar set midsoul:info name [{translate:"ms.bossbar.0.start",fallback:"人数已达标 | 游戏将在 %s 秒后开始",color:"aqua",with:[{score:{objective:"tick.general",name:"$0_start"},color:"#50A7D9"}]}]

# 人数超限倒计时
execute if score $prepare data matches 11.. run bossbar set midsoul:info color green
execute if score $0_start tick.general matches ..20 if score $prepare data matches 11.. run bossbar set midsoul:info name [{translate:"ms.bossbar.0.overload",fallback:"人数已超限 | 游戏将在 %s 秒后开始",color:"#33FF33",with:[{score:{objective:"tick.general",name:"$0_start"},color:"#20C020"}]}]

# 人数不足
$execute if score $prepare data matches ..$(cancel) store result bossbar midsoul:info value run scoreboard players get $prepare data
$execute if score $prepare data matches ..$(cancel) run bossbar set midsoul:info max $(start)
$execute if score $prepare data matches ..$(cancel) run bossbar set midsoul:info color red
$execute if data storage ms:mode {start:"5"} if score $prepare data matches ..$(cancel) run bossbar set midsoul:info name [{translate:"ms.bossbar.0.wait",fallback:"等待玩家中 | 需要 %s 人以开始",color:"red",with:["5"]}]
$execute if data storage ms:mode {start:"2"} if score $prepare data matches ..$(cancel) run bossbar set midsoul:info name [{translate:"ms.bossbar.0.wait",fallback:"等待玩家中 | 需要 %s 人以开始",color:"red",with:["2"]}]