# [凶残] 攻击 1 次   +20pts
#       击倒 1 次   +40pts
#       单场击倒≥5   +75ts
#       单场击倒≥10   +150pts
#       * 基础攻击得分可以与附加分叠加, 附加分之间不叠加
# [狩猎] 有 1/2/3/4/5/6/7+ 灵魂死亡, 获得30/80/150/270/400/550/650pts
#       阵营获胜/大获全胜   +150/350pts
#       * 以上两条均仅可以触发 1 次

tellraw @s "\n"
tellraw @s {"translate":"ms.caculate.1","fallback": "本局得分 »","color": "red","bold": true}

scoreboard players operation @s temp = @s stat_temp_hit
scoreboard players operation @s temp *= $20 data
tellraw @s[scores={stat_temp_hit=1..}] [{"translate":"ms.caculate.protect.2","fallback": "攻击次数"}," ",{"score":{"objective":"stat_temp_hit","name":"@s"}}," » +",{"score":{"objective":"temp","name":"@s"}}]
scoreboard players operation @s temp_exp += @s temp

scoreboard players operation @s temp = @s stat_temp_down
scoreboard players operation @s temp *= $40 data
scoreboard players add @s[scores={stat_temp_down=5..9}] temp 75
scoreboard players add @s[scores={stat_temp_down=10..}] temp 150
tellraw @s[scores={stat_temp_down=1..}] [{"translate":"ms.caculate.protect.3","fallback": "击倒次数"}," ",{"score":{"objective":"stat_temp_down","name":"@s"}}," » +",{"score":{"objective":"temp","name":"@s"}}]
scoreboard players operation @s temp_exp += @s temp

execute if score $dead temp matches 1 run scoreboard players set @s temp 30
execute if score $dead temp matches 2 run scoreboard players set @s temp 80
execute if score $dead temp matches 3 run scoreboard players set @s temp 150
execute if score $dead temp matches 4 run scoreboard players set @s temp 270
execute if score $dead temp matches 5 run scoreboard players set @s temp 400
execute if score $dead temp matches 6 run scoreboard players set @s temp 550
execute if score $dead temp matches 7.. run scoreboard players set @s temp 650
execute if score $dead temp matches 1.. run tellraw @s [{"translate":"ms.caculate.protect.4","fallback": "死亡灵魂"}," ",{"score":{"objective":"temp","name":"$dead"}}," » +",{"score":{"objective":"temp","name":"@s"}}]
scoreboard players operation @s temp_exp += @s temp

execute if score $finish temp matches -3..-1 run scoreboard players set @s temp 150
execute if score $finish temp matches ..-4 run scoreboard players set @s temp 350
execute if score $finish temp matches ..-1 run tellraw @s [{"translate":"ms.caculate.5","fallback": "对局得分"},"    » +",{"score":{"objective":"temp","name":"@s"}}]
scoreboard players operation @s temp_exp += @s temp

tellraw @s [{"translate":"ms.caculate.6","fallback": "总计得分"},"    » ",{"score":{"objective":"temp_exp","name":"@s"}}]