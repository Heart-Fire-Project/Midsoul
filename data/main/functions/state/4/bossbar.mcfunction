# 在第二传送门开启后的闪烁判定
execute if score $4_portal countdown matches 600.. run function base:random {storage:"data",max:"1000",min:"1"}
execute if score $4_portal countdown matches 500..600 run function base:random {storage:"data",max:"1053",min:"1"}
execute if score $4_portal countdown matches 400..500 run function base:random {storage:"data",max:"1111",min:"1"}
execute if score $4_portal countdown matches 300..400 run function base:random {storage:"data",max:"1176",min:"1"}
execute if score $4_portal countdown matches 200..300 run function base:random {storage:"data",max:"1250",min:"1"}
execute if score $4_portal countdown matches 100..200 run function base:random {storage:"data",max:"1333",min:"1"}
execute if score $4_portal countdown matches 000..100 run function base:random {storage:"data",max:"1429",min:"1"}

# 设置名称
function base:caculate/time {tick:"$4_portal",source_tick:"countdown",cacu:"cacu",5:"#5",20:"#20",24:"#24",60:"#60",source_mem:"data",unit:"sec"}
execute if score $portal temp matches 1 run bossbar set midsoul:info color purple
execute if score $portal temp matches 1 if score $ms cacu matches ..09 run bossbar set midsoul:info name [{"translate":"ms.bossbar.4.portal.1","fallback":"传送门 »","color":"#BC78EC"}," ",{"score":{"objective":"cacu","name":"$sec"}},{"text":".0"},{"score":{"objective":"cacu","name":"$ms"}}," ",{"translate":"ms.bossbar.4.portal.2","fallback":"« 已开启"}]
execute if score $portal temp matches 1 if score $ms cacu matches 10.. run bossbar set midsoul:info name [{"translate":"ms.bossbar.4.portal.1","fallback":"传送门 »","color":"#BC78EC"}," ",{"score":{"objective":"cacu","name":"$sec"}},{"text":"."},{"score":{"objective":"cacu","name":"$ms"}}," ",{"translate":"ms.bossbar.4.portal.2","fallback":"« 已开启"}]
execute if score $portal temp matches 2 run bossbar set midsoul:info color pink
execute if score $portal temp matches 2.. if score $random data matches ..1000 if score $ms cacu matches ..09 run bossbar set midsoul:info name [{"translate":"ms.bossbar.4.portal.1","fallback":"传送门 »","color":"#FF96F9"}," ",{"score":{"objective":"cacu","name":"$sec"}},{"text":".0"},{"score":{"objective":"cacu","name":"$ms"}}," ",{"translate":"ms.bossbar.4.portal.2","fallback":"« 已开启"}]
execute if score $portal temp matches 2.. if score $random data matches ..1000 if score $ms cacu matches 10.. run bossbar set midsoul:info name [{"translate":"ms.bossbar.4.portal.1","fallback":"传送门 »","color":"#FF96F9"}," ",{"score":{"objective":"cacu","name":"$sec"}},{"text":"."},{"score":{"objective":"cacu","name":"$ms"}}," ",{"translate":"ms.bossbar.4.portal.2","fallback":"« 已开启"}]
execute if score $portal temp matches 2.. if score $random data matches 1001.. if score $ms cacu matches ..09 run bossbar set midsoul:info name [{"translate":"ms.bossbar.4.portal.1","fallback":"传送门 »","obfuscated":true,"color":"#FF96F9"}," ",{"score":{"objective":"cacu","name":"$sec"},"obfuscated":false},{"text":".0","obfuscated":false},{"score":{"objective":"cacu","name":"$ms"},"obfuscated":false}," ",{"translate":"ms.bossbar.4.portal.2","fallback":"« 已开启","obfuscated":true}]
execute if score $portal temp matches 2.. if score $random data matches 1001.. if score $ms cacu matches 10.. run bossbar set midsoul:info name [{"translate":"ms.bossbar.4.portal.1","fallback":"传送门 »","obfuscated":true,"color":"#FF96F9"}," ",{"score":{"objective":"cacu","name":"$sec"},"obfuscated":false},{"text":".","obfuscated":false},{"score":{"objective":"cacu","name":"$ms"},"obfuscated":false}," ",{"translate":"ms.bossbar.4.portal.2","fallback":"« 已开启","obfuscated":true}]

# 设置数值
execute store result bossbar midsoul:info value run scoreboard players get $4_portal countdown