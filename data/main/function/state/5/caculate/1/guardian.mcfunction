scoreboard players set @s exp.temp 0
tellraw @s [{"text":"-------------- ","color":"#7367F0"},{"translate":"ms.info.end.11","fallback":"个人表现"}," --------------"]

# 利刃出击
execute unless score @s temp.hit matches -2147483648..2147483647 run scoreboard players set @s temp.hit 0
scoreboard players operation @s temp = @s temp.hit
scoreboard players operation @s temp *= #40 data
scoreboard players add @s[scores={temp.hit=3..}] temp 45
scoreboard players add @s[scores={temp.hit=5..}] temp 75
scoreboard players add @s[scores={temp.hit=7..}] temp 100
tellraw @s[scores={temp.hit=0}] [{"translate":"ms.info.end.12g","fallback":"利刃出击","color":"#FCEF01"}," | +",{"text":"00","color":"#79550E"},{"score":{"objective":"temp","name":"@s"}}," (",{"score":{"objective":"temp.hit","name":"@s"}},"×)"]
tellraw @s[scores={temp.hit=1..2}] [{"translate":"ms.info.end.12g","fallback":"利刃出击","color":"#FCEF01"}," | +",{"text":"0","color":"#79550E"},{"score":{"objective":"temp","name":"@s"}}," (",{"score":{"objective":"temp.hit","name":"@s"}},"×)"]
tellraw @s[scores={temp.hit=3..}] [{"translate":"ms.info.end.12g","fallback":"利刃出击","color":"#FCEF01"}," | +",{"score":{"objective":"temp","name":"@s"}}," (",{"score":{"objective":"temp.hit","name":"@s"}},"×)"]
scoreboard players operation @s exp.temp += @s temp

# 击倒灵魂
execute unless score @s temp.down matches -2147483648..2147483647 run scoreboard players set @s temp.down 0
scoreboard players operation @s temp = @s temp.down
scoreboard players operation @s temp *= #30 data
scoreboard players add @s[scores={temp.down=2..}] temp 60
scoreboard players add @s[scores={temp.down=3..}] temp 90
scoreboard players add @s[scores={temp.down=5..}] temp 140
tellraw @s[scores={temp.down=0}] [{"translate":"ms.info.end.13g","fallback":"击倒灵魂","color":"#E47227"}," | +",{"text":"00","color":"#67423B"},{"score":{"objective":"temp","name":"@s"}}," (",{"score":{"objective":"temp.down","name":"@s"}},"×)"]
tellraw @s[scores={temp.down=1}] [{"translate":"ms.info.end.13g","fallback":"击倒灵魂","color":"#E47227"}," | +",{"text":"0","color":"#67423B"},{"score":{"objective":"temp","name":"@s"}}," (",{"score":{"objective":"temp.down","name":"@s"}},"×)"]
tellraw @s[scores={temp.down=2..}] [{"translate":"ms.info.end.13g","fallback":"击倒灵魂","color":"#E47227"}," | +",{"score":{"objective":"temp","name":"@s"}}," (",{"score":{"objective":"temp.down","name":"@s"}},"×)"]
scoreboard players operation @s exp.temp += @s temp

# 追灵寻踪
execute unless score @s temp.track matches -2147483648..2147483647 run scoreboard players set @s temp.track 0
scoreboard players operation @s temp = @s temp.track
scoreboard players add @s[scores={temp.track=30..}] temp 25
scoreboard players add @s[scores={temp.track=60..}] temp 40
scoreboard players add @s[scores={temp.track=120..}] temp 55
tellraw @s[scores={temp.track=..9}] [{"translate":"ms.info.end.14g","fallback":"追灵寻踪","color":"#EC7042"}," | +",{"text":"00","color":"#6E3A07"},{"score":{"objective":"temp","name":"@s"}}," (",{"score":{"objective":"temp.track","name":"@s"}},"s)"]
tellraw @s[scores={temp.track=10..59}] [{"translate":"ms.info.end.14g","fallback":"追灵寻踪","color":"#EC7042"}," | +",{"text":"0","color":"#6E3A07"},{"score":{"objective":"temp","name":"@s"}}," (",{"score":{"objective":"temp.track","name":"@s"}},"s)"]
tellraw @s[scores={temp.track=60..}] [{"translate":"ms.info.end.14g","fallback":"追灵寻踪","color":"#EC7042"}," | +",{"score":{"objective":"temp","name":"@s"}}," (",{"score":{"objective":"temp.track","name":"@s"}},"s)"]
scoreboard players operation @s exp.temp += @s temp

# 刀下亡魂
scoreboard players set @s temp 0
execute if score $soul_death data matches 1 run scoreboard players set @s temp 100
execute if score $soul_death data matches 2 run scoreboard players set @s temp 210
execute if score $soul_death data matches 3 run scoreboard players set @s temp 325
execute if score $soul_death data matches 4 run scoreboard players set @s temp 450
execute if score $soul_death data matches 5.. run scoreboard players set @s temp 570
execute if score $soul_death data matches 0 run tellraw @s [{"translate":"ms.info.end.15g","fallback":"刀下亡魂","color":"#CC4433"}," | +",{"text":"00","color":"#71383F"},{"score":{"objective":"temp","name":"@s"}}," (",{"score":{"objective":"data","name":"$soul_death"}},"×)"]
execute if score $soul_death data matches 1.. run tellraw @s [{"translate":"ms.info.end.15g","fallback":"刀下亡魂","color":"#CC4433"}," | +",{"score":{"objective":"temp","name":"@s"}}," (",{"score":{"objective":"data","name":"$soul_death"}},"×)"]
scoreboard players operation @s exp.temp += @s temp

# 对局综合
execute if score $result data matches 1.. run scoreboard players set @s temp 0
execute if score $result data matches 0 run scoreboard players set @s temp 40
execute if score $result data matches -2..-1 run scoreboard players set @s temp 80
execute if score $result data matches ..-3 run scoreboard players set @s temp 120
tellraw @s[scores={temp=..9}] [{"translate":"ms.info.end.16","fallback":"对局综合","color":"#C6101E"}," | +",{"text":"00","color":"#4B0101"},{"score":{"objective":"temp","name":"@s"}}]
tellraw @s[scores={temp=10..99}] [{"translate":"ms.info.end.16","fallback":"对局综合","color":"#C6101E"}," | +",{"text":"0","color":"#4B0101"},{"score":{"objective":"temp","name":"@s"}}]
tellraw @s[scores={temp=100..}] [{"translate":"ms.info.end.16","fallback":"对局综合","color":"#C6101E"}," | +",{"score":{"objective":"temp","name":"@s"}}]
scoreboard players operation @s exp.temp += @s temp

# 最终得分
execute if score @s exp.temp matches 1250.. run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"#C920B0"}," | ",{"score":{"objective":"exp.temp","name":"@s"}}," ",{"text":"[","color":"#7C67FE"},{"text":"E","color":"#8A57FE"},{"text":"X","color":"#9050FE"},{"text":"+","color":"#A03DFF"},{"text":"]","color":"#AE2CFF"}]
execute if score @s exp.temp matches 1000..1249 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"#C920B0"}," | ",{"score":{"objective":"exp.temp","name":"@s"}}," ",{"text":"[","color":"#778CF7"},{"text":"E","color":"#7B7DE2"},{"text":"X","color":"#806FCE"},{"text":"]","color":"#8364BF"}]
execute if score @s exp.temp matches 800..999 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"#C920B0"}," | ",{"text":"0","color":"#633654"},{"score":{"objective":"exp.temp","name":"@s"}}," ",{"text":"[","color":"#FB858A"},{"text":"S","color":"#FB8F81"},{"text":"+","color":"#FC9D76"},{"text":"]","color":"#FCA86D"}]
execute if score @s exp.temp matches 640..799 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"#C920B0"}," | ",{"text":"0","color":"#633654"},{"score":{"objective":"exp.temp","name":"@s"}}," ",{"text":"[","color":"#FBAB7E"},{"text":"S","color":"#FAB876"},{"text":"]","color":"#F8C66D"}]
execute if score @s exp.temp matches 500..639 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"#C920B0"}," | ",{"text":"0","color":"#633654"},{"score":{"objective":"exp.temp","name":"@s"}}," ",{"text":"[","color":"#7B57CD"},{"text":"A","color":"#8066E2"},{"text":"]","color":"#6C5BCE"}]
execute if score @s exp.temp matches 380..499 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"#C920B0"}," | ",{"text":"0","color":"#633654"},{"score":{"objective":"exp.temp","name":"@s"}}," ",{"text":"[","color":"#357FFF"},{"text":"B","color":"#2898FE"},{"text":"]","color":"#3088FF"}]
execute if score @s exp.temp matches 280..379 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"#C920B0"}," | ",{"text":"0","color":"#633654"},{"score":{"objective":"exp.temp","name":"@s"}}," ",{"text":"[","color":"#18D950"},{"text":"C","color":"#3EDD4E"},{"text":"]","color":"#59E04D"}]
execute if score @s exp.temp matches 200..279 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"#C920B0"}," | ",{"text":"0","color":"#633654"},{"score":{"objective":"exp.temp","name":"@s"}}," ",{"text":"[","color":"#E9BCAD"},{"text":"D","color":"#E4BEBC"},{"text":"]","color":"#E0C0C6"}]
execute if score @s exp.temp matches 100..199 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"#C920B0"}," | ",{"text":"0","color":"#633654"},{"score":{"objective":"exp.temp","name":"@s"}}," ",{"text":"[","color":"#D0CBC5"},{"text":"F","color":"#DDDBD5"},{"text":"]","color":"#E4E2DD"}]
execute if score @s exp.temp matches 10..99 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"#C920B0"}," | ",{"text":"00","color":"#633654"},{"score":{"objective":"exp.temp","name":"@s"}}," ",{"text":"[","color":"#D0CBC5"},{"text":"F","color":"#DDDBD5"},{"text":"]","color":"#E4E2DD"}]
execute if score @s exp.temp matches 0..9 run tellraw @s [{"translate":"ms.info.end.6","fallback":"总计得分","color":"#C920B0"}," | ",{"text":"000","color":"#633654"},{"score":{"objective":"exp.temp","name":"@s"}}," ",{"text":"[","color":"#D0CBC5"},{"text":"F","color":"#DDDBD5"},{"text":"]","color":"#E4E2DD"}]