# 循环核心
execute unless score $end_anime temp matches 1..200 run scoreboard players set $end_anime temp 0
execute if score $end_anime temp matches 0..200 run scoreboard players add $end_anime temp 1
execute if score $end_anime temp matches 201.. run scoreboard players reset $end_anime temp
execute if score $end_anime temp matches 1..200 run schedule function game:state/5/end_process 1t replace

scoreboard players set $random_min data 1
scoreboard players set $random_max data 100
function base:random

# 主标题 α
execute if score $end_anime temp matches 1 run title @a times 0 100 0
execute if score $end_anime temp matches 1 run playsound entity.warden.sonic_charge player @a[team=!admin] 0 1000000 0 1000000
execute if score $end_anime temp matches 1..10 if score $random data matches 1..90 run title @a[team=!admin] title {"translate":"ms.title.end","fallback": "游戏结束","color": "#BC78EC","obfuscated": true}
execute if score $end_anime temp matches 1..10 if score $random data matches 91..100 run title @a[team=!admin] title {"translate":"ms.title.end","fallback": "游戏结束","color": "#BC78EC","obfuscated": false}

# 主标题 β
execute if score $end_anime temp matches 11..20 if score $random data matches 1..50 run title @a[team=!admin] title {"translate":"ms.title.end","fallback": "游戏结束","color": "#BC78EC","obfuscated": true}
execute if score $end_anime temp matches 11..20 if score $random data matches 51..100 run title @a[team=!admin] title {"translate":"ms.title.end","fallback": "游戏结束","color": "#BC78EC","obfuscated": false}

# 主标题 γ
execute if score $end_anime temp matches 21..30 if score $random data matches 1..10 run title @a[team=!admin] title {"translate":"ms.title.end","fallback": "游戏结束","color": "#BC78EC","obfuscated": true}
execute if score $end_anime temp matches 21..30 if score $random data matches 11..90 run title @a[team=!admin] title {"translate":"ms.title.end","fallback": "游戏结束","color": "#BC78EC","obfuscated": false}

# 主标题 Ω
execute if score $end_anime temp matches 31..40 run title @a[team=!admin] title {"translate":"ms.title.end","fallback": "游戏结束","color": "#BC78EC","obfuscated": false}

# 数人头
execute if score $end_anime temp matches 41 run scoreboard players reset $finish temp
execute if score $end_anime temp matches 41 run scoreboard players reset $dead temp
execute if score $end_anime temp matches 41 as @a[team=finish] run scoreboard players add $finish temp 1
execute if score $end_anime temp matches 41 as @a[team=dead] run scoreboard players add $dead temp 1

# 计算结果
execute if score $end_anime temp matches 42 run scoreboard players operation $finish temp -= $dead temp
execute if score $end_anime temp matches 42 unless entity @a[team=protect] run scoreboard players set $finish temp 4
# 计算方式为 复活灵魂数-死亡灵魂数
# 4 - 灵魂 大获全胜
# 2 - 灵魂 略胜一筹
# 0 - 平局 两败俱伤
# -2 - 守卫 略胜一筹
# -4 - 守卫 大获全胜

# 统计数据
execute if score $end_anime temp matches 51 if score $finish temp matches 1.. run scoreboard players add @a[team=soul] stat_total_win 1
execute if score $end_anime temp matches 51 if score $finish temp matches 0 run scoreboard players add @a[team=!admin] stat_total_draw 1
execute if score $end_anime temp matches 51 if score $finish temp matches ..-1 run scoreboard players add @a[team=protect] stat_total_win 1

# 小标题
execute if score $end_anime temp matches 51 run playsound entity.warden.sonic_boom player @a[team=!admin] 0 1000000 0 1000000
execute if score $end_anime temp matches 51 if score $finish temp matches 4.. run title @a[team=!admin] subtitle {"translate":"ms.end.a","fallback": "灵魂方 大获全胜","color": "aqua"}
execute if score $end_anime temp matches 51 if score $finish temp matches 1..3 run title @a[team=!admin] subtitle {"translate":"ms.end.b","fallback": "灵魂方 略胜一筹","color": "aqua"}
execute if score $end_anime temp matches 51 if score $finish temp matches 0 run title @a[team=!admin] subtitle {"translate":"ms.end.c","fallback": "平局 无人得胜","color": "gray"}
execute if score $end_anime temp matches 51 if score $finish temp matches -3..-1 run title @a[team=!admin] subtitle {"translate":"ms.end.d","fallback": "灵魂守护者 略胜一筹","color": "red"}
execute if score $end_anime temp matches 51 if score $finish temp matches ..-4 run title @a[team=!admin] subtitle {"translate":"ms.end.e","fallback": "灵魂守护者 大获全胜","color": "red"}

# 详细信息
scoreboard players operation $temp_end stat_temp_play_time = $temp stat_temp_play_time
execute store result score $temp_m stat_temp_play_time run scoreboard players operation $temp_end stat_temp_play_time /= $1200 data
scoreboard players operation $temp_end stat_temp_play_time = $temp stat_temp_play_time
execute store result score $temp_s stat_temp_play_time run scoreboard players operation $temp_end stat_temp_play_time %= $1200 data
scoreboard players operation $temp_s stat_temp_play_time /= $20 data
execute if score $end_anime temp matches 71 run playsound ui.button.click player @a[team=!admin] 0 1000000 0 1000000
execute if score $end_anime temp matches 71 run tellraw @a[team=!admin] {"translate":"ms.info.end.1","fallback": "------- 详细结果 -------","color":"gray"}
execute if score $end_anime temp matches 71 run tellraw @a[team=!admin] [{"translate":"ms.info.end.2","fallback": "灵魂守卫者","color":"red"}," » ",{"selector":"@a[team=protect]"}]
execute if score $end_anime temp matches 71 run tellraw @a[team=!admin] [{"translate":"ms.info.end.3","fallback": "复活灵魂","color":"green"}," » ",{"selector":"@a[team=finish]"}]
execute if score $end_anime temp matches 71 run tellraw @a[team=!admin] [{"translate":"ms.info.end.4","fallback": "死亡灵魂","color":"gray"}," » ",{"selector":"@a[team=dead]"}]
execute if score $end_anime temp matches 71 run tellraw @a[team=!admin] {"translate":"ms.info.end.7","fallback": "持续时间 » %s 分 %s 秒","color":"aqua","with":[{"score":{"name":"$temp_m","objective":"stat_temp_play_time"}},{"score":{"name":"$temp_s","objective":"stat_temp_play_time"}}]}
execute if score $end_anime temp matches 71 run tellraw @a[team=!admin] {"translate":"ms.info.end.5","fallback": "等待稍后回到大厅…","color":"gray"}
execute if score $end_anime temp matches 71 run tellraw @a[team=!admin] {"translate":"ms.info.end.6","fallback": "---------------------","color":"gray"}

# 个人数据结算
execute if score $end_anime temp matches 91 run function game:state/5/stats
execute if score $end_anime temp matches 91 run playsound ui.button.click player @a[team=!admin] 0 1000000 0 1000000
execute if score $end_anime temp matches 91 run scoreboard players reset * stat_temp_play_time

# 给点钱吧QAQ
execute if score $end_anime temp matches 121 run playsound ui.button.click player @a[team=!admin] 0 1000000 0 1000000
execute if score $end_anime temp matches 121 run title @a[team=!admin] title {"translate":"ms.end.winner","fallback": "全场最佳","color": "gold"}
execute if score $end_anime temp matches 121 run title @a[team=!admin] subtitle {"selector":"@a[tag=winner]"}
execute if score $end_anime temp matches 121 run tellraw @a[team=!admin] [{"translate":"ms.info.feedback","fallback":"反馈","hoverEvent":{"action":"show_text","value":"欢迎反馈地图存在的 Bug 或你的意见！"},"color": "yellow"}," - ",{"text":"[GitHub]","color": "#7B63AB","clickEvent":{"action":"open_url","value":"https://github.com/Heart-Fire-Project/midnight-soul/issues/new/choose"}}]
execute if score $end_anime temp matches 121 unless score $show_donate_tip data matches 1 run tellraw @a[team=!admin] [{"translate":"ms.info.donate","fallback":"赞助","color": "light_purple"}," - ",{"translate":"ms.info.afdian","fallback":"[爱发电]","color": "#946CE6","clickEvent":{"action":"open_url","value":"https://afdian.net/a/HfPro"}}]

# 把玩家都丢回去
execute if score $end_anime temp matches 161 run function game:state/0/enter

# 清理
execute if score $end_anime temp matches 181 run kill @e[tag=game_entity]
execute if score $end_anime temp matches 191 run title @a reset
execute if score $end_anime temp matches 191 run forceload remove all