# 重新开始这一局
tellraw @a [{text:"» ",bold:true,color:"#A2D0F9"},{translate:"ms.info.rematch",fallback:"%s 已强制进行当局重赛",with:[{selector:"@s"}],bold:false}]

team join soul @a[team=dead]
team join soul @a[team=revive]
tp @a[tag=game_player] 0 -7 0
scoreboard players reset * info
scoreboard objectives modify info displayname ["     ",{translate:"ms.scoreboard.info",fallback:"接下来……"},"     "]
bossbar set midsoul:info players
bossbar set midsoul:heed players
bossbar set midsoul:warn players
bossbar set midsoul:2 players @a[team=soul]
bossbar set midsoul:3 players @a[team=guardian]
function main:state/2/enter