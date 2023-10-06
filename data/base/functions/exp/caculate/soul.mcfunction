#[目标] 收集 1 碎片   +20pts
#       单场收集数≥5   +20pts
#       单场收集数≥7   +45pts
#       单场收集数≥12   +70pts
#       单场收集数≥15   +100pts
#       单场收集数≥20   +150pts
#        * 基础收集得分可以与附加分叠加, 附加分之间不叠加
#[逃生] 生存 2 秒钟   +1pts
#       生存 1 分钟   +20pts
#       * 生存 1 分钟时额外获得分数, 该项单次对局至多获得1000pts(20'00")
#[援助] 救助 1 队友   +40pts
#       单场救助数≥3   +40pts
#       单场救助数≥5   +70pts
#       * 基础救助得分可以与附加分叠加, 附加分之间不叠加
#[无畏] 在 没有被击中 的情况下获胜 +270pts
#       在 没有进入垂死 的情况下获胜 +220pts
#       在 进入 1~2 次垂死的情况下获胜 +160pts
#       复活成功获胜 +120pts
#       死后阵营获胜 +100pts
#       在仅剩余你 1 人的情况下复活 +80pts
#       * 除最后一个条件可以叠加, 其他条件皆无法叠加

tellraw @s "\n"
tellraw @s {"translate":"ms.caculate.1","fallback": "本局得分 »","color": "aqua","bold": true}

scoreboard players operation @s temp = @s stat_temp_collect
scoreboard players operation @s temp *= $20 data
scoreboard players add @s[scores={stat_temp_collect=5..6}] temp 20
scoreboard players add @s[scores={stat_temp_collect=7..11}] temp 45
scoreboard players add @s[scores={stat_temp_collect=12..14}] temp 70
scoreboard players add @s[scores={stat_temp_collect=15..19}] temp 100
scoreboard players add @s[scores={stat_temp_collect=20..}] temp 150
tellraw @s[scores={stat_temp_collect=1..}] [{"translate":"ms.caculate.soul.2","fallback": "碎片搜集"}," ",{"score":{"objective":"stat_temp_collect","name":"@s"}}," » +",{"score":{"objective":"temp","name":"@s"}}]
scoreboard players operation @s temp_exp += @s temp

scoreboard players operation @s temp = @s stat_temp_play_time
execute store result score $temp_m temp run scoreboard players operation @s temp /= $1200 data
execute store result score $temp_s temp run scoreboard players operation @s stat_temp_play_time %= $1200 data
scoreboard players operation $temp_s temp /= $20 data
scoreboard players operation $cacu_m temp = $temp_m temp
scoreboard players operation $cacu_s temp = $temp_s temp
execute store result score @s temp run scoreboard players operation $cacu_m temp *= $50 data
scoreboard players operation $cacu_s temp /= $2 data
scoreboard players operation @s temp += $cacu_s temp
execute if score @s temp matches 1000.. run scoreboard players set @s temp 1000
execute if score $temp_s temp matches 10..59 run tellraw @s[scores={stat_temp_play_time=1..}] [{"translate":"ms.caculate.soul.3","fallback": "存活时长"}," ",{"score":{"objective":"temp","name":"$temp_m"}},":",{"score":{"objective":"temp","name":"$temp_s"}}," » +",{"score":{"objective":"temp","name":"@s"}}]
execute if score $temp_s temp matches 0..9 run tellraw @s[scores={stat_temp_play_time=1..}] [{"translate":"ms.caculate.soul.3","fallback": "存活时长"}," ",{"score":{"objective":"temp","name":"$temp_m"}},":0",{"score":{"objective":"temp","name":"$temp_s"}}," » +",{"score":{"objective":"temp","name":"@s"}}]
scoreboard players operation @s temp_exp += @s temp

scoreboard players operation @s temp = @s stat_temp_heal
scoreboard players operation @s temp *= $40 data
scoreboard players add @s[scores={stat_temp_heal=3..4}] temp 40
scoreboard players add @s[scores={stat_temp_heal=5..}] temp 70
tellraw @s[scores={stat_temp_heal=1..}] [{"translate":"ms.caculate.soul.4","fallback": "队友救助"}," ",{"score":{"objective":"stat_temp_heal","name":"@s"}}," » +",{"score":{"objective":"temp","name":"@s"}}]
scoreboard players operation @s temp_exp += @s temp

scoreboard players set @s[team=finish] temp 120
scoreboard players set @s[team=finish,tag=healed_1] temp 160
scoreboard players set @s[team=finish,tag=!healed_1,tag=!healed_2] temp 220
scoreboard players set @s[team=finish,tag=no_hit] temp 270
execute if score $finish temp matches 1.. run scoreboard players set @a[team=dead] temp 100
execute if score $alive temp matches 1 run scoreboard players add @s[team=finish] temp 80
tellraw @s[scores={temp=1..}] [{"translate":"ms.caculate.5","fallback": "对局得分"},"    » +",{"score":{"objective":"temp","name":"@s"}}]
scoreboard players operation @s temp_exp += @s temp

tellraw @s [{"translate":"ms.caculate.6","fallback": "总计得分"},"    » ",{"score":{"objective":"temp_exp","name":"@s"}}]