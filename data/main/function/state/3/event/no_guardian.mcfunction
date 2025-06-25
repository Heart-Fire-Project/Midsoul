# 缺失守卫者 | 30 秒后结束游戏
scoreboard players operation $tick temp = $3_noguar tick.global
scoreboard players add $tick temp 19
function base:caculate/time {unit:"sec",tick:"$tick",source:"temp"}

# 颜色变化
scoreboard players add $3_noguar_color tick.global 1
execute if score $3_noguar_color tick.global matches 10 run scoreboard players set $3_noguar_color tick.global -8
scoreboard players operation $color temp = $3_noguar_color tick.global
execute if score $color temp matches ..-1 run scoreboard players operation $color temp *= #-1 data

# 初始音效
execute if score $3_noguar tick.global matches 600 run playsound entity.wandering_trader.disappeared player @a[team=!admin] 0 1000000 0 1000000

# 确认显示者
tag @a remove show_title
execute as @a[tag=game_player] unless score @s tick.using matches 1.. run tag @s add show_title

# 快捷栏提示
execute if score $color temp matches 0 run title @a[team=!admin,tag=show_title] actionbar [{"text":"⏳ ","color":"#DD2200"},{"translate":"ms.info.no_guardian","fallback":"守卫者掉线，游戏将在 %s 秒后结束","with":[{"score":{"name":"$sec","objective":"temp2"}}]}," ⏳"]
execute if score $color temp matches 1 run title @a[team=!admin,tag=show_title] actionbar [{"text":"⏳ ","color":"#E12809"},{"translate":"ms.info.no_guardian","fallback":"守卫者掉线，游戏将在 %s 秒后结束","with":[{"score":{"name":"$sec","objective":"temp2"}}]}," ⏳"]
execute if score $color temp matches 2 run title @a[team=!admin,tag=show_title] actionbar [{"text":"⏳ ","color":"#E52D13"},{"translate":"ms.info.no_guardian","fallback":"守卫者掉线，游戏将在 %s 秒后结束","with":[{"score":{"name":"$sec","objective":"temp2"}}]}," ⏳"]
execute if score $color temp matches 3 run title @a[team=!admin,tag=show_title] actionbar [{"text":"⏳ ","color":"#E8331C"},{"translate":"ms.info.no_guardian","fallback":"守卫者掉线，游戏将在 %s 秒后结束","with":[{"score":{"name":"$sec","objective":"temp2"}}]}," ⏳"]
execute if score $color temp matches 4 run title @a[team=!admin,tag=show_title] actionbar [{"text":"⏳ ","color":"#EC3926"},{"translate":"ms.info.no_guardian","fallback":"守卫者掉线，游戏将在 %s 秒后结束","with":[{"score":{"name":"$sec","objective":"temp2"}}]}," ⏳"]
execute if score $color temp matches 5 run title @a[team=!admin,tag=show_title] actionbar [{"text":"⏳ ","color":"#F03E2F"},{"translate":"ms.info.no_guardian","fallback":"守卫者掉线，游戏将在 %s 秒后结束","with":[{"score":{"name":"$sec","objective":"temp2"}}]}," ⏳"]
execute if score $color temp matches 6 run title @a[team=!admin,tag=show_title] actionbar [{"text":"⏳ ","color":"#F44439"},{"translate":"ms.info.no_guardian","fallback":"守卫者掉线，游戏将在 %s 秒后结束","with":[{"score":{"name":"$sec","objective":"temp2"}}]}," ⏳"]
execute if score $color temp matches 7 run title @a[team=!admin,tag=show_title] actionbar [{"text":"⏳ ","color":"#F74A42"},{"translate":"ms.info.no_guardian","fallback":"守卫者掉线，游戏将在 %s 秒后结束","with":[{"score":{"name":"$sec","objective":"temp2"}}]}," ⏳"]
execute if score $color temp matches 8 run title @a[team=!admin,tag=show_title] actionbar [{"text":"⏳ ","color":"#FB4F4C"},{"translate":"ms.info.no_guardian","fallback":"守卫者掉线，游戏将在 %s 秒后结束","with":[{"score":{"name":"$sec","objective":"temp2"}}]}," ⏳"]
execute if score $color temp matches 9 run title @a[team=!admin,tag=show_title] actionbar [{"text":"⏳ ","color":"#FF5555"},{"translate":"ms.info.no_guardian","fallback":"守卫者掉线，游戏将在 %s 秒后结束","with":[{"score":{"name":"$sec","objective":"temp2"}}]}," ⏳"]

# 时间到就炸
execute if score $3_noguar tick.global matches ..0 run function main:state/5/enter
scoreboard players remove $3_noguar tick.global 1