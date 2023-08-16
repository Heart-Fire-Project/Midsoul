# 乱码从 30 秒开始随机闪烁
# 0-30s 每 5 秒升高 5% 几率
scoreboard players set $random_min data 1
execute if score $portal countdown matches 600.. run scoreboard players set $random_max data 1000
execute if score $portal countdown matches 500..600 run scoreboard players set $random_max data 1053
execute if score $portal countdown matches 400..500 run scoreboard players set $random_max data 1111
execute if score $portal countdown matches 300..400 run scoreboard players set $random_max data 1176
execute if score $portal countdown matches 200..300 run scoreboard players set $random_max data 1250
execute if score $portal countdown matches 100..200 run scoreboard players set $random_max data 1333
execute if score $portal countdown matches 000..100 run scoreboard players set $random_max data 1429
function base:random

# 设置名称
scoreboard players operation $portal temp = $portal countdown
execute store result score $portal_f temp run scoreboard players operation $portal temp /= $20 data
scoreboard players operation $portal temp = $portal countdown
execute store result score $portal_b temp run scoreboard players operation $portal temp %= $20 data
scoreboard players operation $portal_b temp *= $5 data
execute if score $random data matches 1001.. run bossbar set midsoul:info color pink
execute if score $random data matches ..1000 run bossbar set midsoul:info color purple
execute if score $random data matches 1001.. if score $portal_b temp matches 10.. run bossbar set midsoul:info name [{"translate":"ms.bossbar.4.portal.1","fallback":"传送门 »","obfuscated":true,"color":"#FF96F9"}," ",{"score":{"objective":"temp","name":"$portal_f"},"obfuscated": false},{"text": ".","obfuscated": false},{"score":{"objective":"temp","name":"$portal_b"},"obfuscated": false}," ",{"translate":"ms.bossbar.4.portal.2","fallback":"« 已开启","obfuscated":true}]
execute if score $random data matches 1001.. if score $portal_b temp matches ..9 run bossbar set midsoul:info name [{"translate":"ms.bossbar.4.portal.1","fallback":"传送门 »","obfuscated":true,"color":"#FF96F9"}," ",{"score":{"objective":"temp","name":"$portal_f"},"obfuscated": false},{"text": ".0","obfuscated": false},{"score":{"objective":"temp","name":"$portal_b"},"obfuscated": false}," ",{"translate":"ms.bossbar.4.portal.2","fallback":"« 已开启","obfuscated":true}]
execute if score $random data matches ..1000 if score $portal_b temp matches 10.. run bossbar set midsoul:info name [{"translate":"ms.bossbar.4.portal.1","fallback":"传送门 »","color":"#BC78EC"}," ",{"score":{"objective":"temp","name":"$portal_f"}},{"text": "."},{"score":{"objective":"temp","name":"$portal_b"}}," ",{"translate":"ms.bossbar.4.portal.2","fallback":"« 已开启"}]
execute if score $random data matches ..1000 if score $portal_b temp matches ..9 run bossbar set midsoul:info name [{"translate":"ms.bossbar.4.portal.1","fallback":"传送门 »","color":"#BC78EC"}," ",{"score":{"objective":"temp","name":"$portal_f"}},{"text": ".0"},{"score":{"objective":"temp","name":"$portal_b"}}," ",{"translate":"ms.bossbar.4.portal.2","fallback":"« 已开启"}]

# 设置数值
execute store result bossbar midsoul:info value run scoreboard players get $portal countdown