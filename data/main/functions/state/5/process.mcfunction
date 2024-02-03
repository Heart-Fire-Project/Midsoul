function base:random {"min":1,"max":100,"storage":data}

# 主标题
execute if score $5_ending countdown matches 199 run title @a times 0 100 0
execute if score $5_ending countdown matches 199 run playsound entity.warden.sonic_charge player @a[team=!admin] 0 1000000 0 1000000
execute if score $5_ending countdown matches 190..199 if score $random data matches 1..90 run title @a[team=!admin] title {"translate":"ms.title.end","fallback":"游戏结束","color":"#7367F0","obfuscated":true}
execute if score $5_ending countdown matches 190..199 if score $random data matches 91..100 run title @a[team=!admin] title {"translate":"ms.title.end","fallback":"游戏结束","color":"#7367F0","obfuscated":false}
execute if score $5_ending countdown matches 180..189 if score $random data matches 1..50 run title @a[team=!admin] title {"translate":"ms.title.end","fallback":"游戏结束","color":"#7367F0","obfuscated":true}
execute if score $5_ending countdown matches 180..189 if score $random data matches 51..100 run title @a[team=!admin] title {"translate":"ms.title.end","fallback":"游戏结束","color":"#7367F0","obfuscated":false}
execute if score $5_ending countdown matches 170..179 if score $random data matches 1..10 run title @a[team=!admin] title {"translate":"ms.title.end","fallback":"游戏结束","color":"#7367F0","obfuscated":true}
execute if score $5_ending countdown matches 170..179 if score $random data matches 11..90 run title @a[team=!admin] title {"translate":"ms.title.end","fallback":"游戏结束","color":"#7367F0","obfuscated":false}
execute if score $5_ending countdown matches 160..169 run title @a[team=!admin] title {"translate":"ms.title.end","fallback":"游戏结束","color":"#7367F0","obfuscated":false}

# 计算结果
# 计算方式为 复活灵魂数-死亡灵魂数
# 4 - 灵魂 大获全胜
# 2 - 灵魂 略胜一筹
# 0 - 平局 两败俱伤
# -2 - 守卫 略胜一筹
# -4 - 守卫 大获全胜
execute if score $5_ending countdown matches 160 run scoreboard players reset $finish temp
execute if score $5_ending countdown matches 160 run scoreboard players reset $dead temp
execute if score $5_ending countdown matches 160 as @a[team=finish] run scoreboard players add $finish temp 1
execute if score $5_ending countdown matches 160 as @a[team=dead] run scoreboard players add $dead temp 1
execute if score $5_ending countdown matches 160 run scoreboard players operation $finish temp -= $dead temp
execute if score $5_ending countdown matches 160 unless entity @a[team=protect] run scoreboard players set $finish temp 4

# 小标题
execute if score $5_ending countdown matches 149 run playsound entity.warden.sonic_boom player @a[team=!admin] 0 1000000 0 1000000
execute if score $5_ending countdown matches 149 if score $finish temp matches 3.. run title @a[team=!admin] subtitle {"translate":"ms.end.a","fallback":"灵魂方 大获全胜","color":"aqua"}
execute if score $5_ending countdown matches 149 if score $finish temp matches 1..2 run title @a[team=!admin] subtitle {"translate":"ms.end.b","fallback":"灵魂方 略胜一筹","color":"aqua"}
execute if score $5_ending countdown matches 149 if score $finish temp matches 0 run title @a[team=!admin] subtitle {"translate":"ms.end.c","fallback":"平局 无人得胜","color":"gray"}
execute if score $5_ending countdown matches 149 if score $finish temp matches -2..-1 run title @a[team=!admin] subtitle {"translate":"ms.end.d","fallback":"灵魂守护者 略胜一筹","color":"red"}
execute if score $5_ending countdown matches 149 if score $finish temp matches ..-3 run title @a[team=!admin] subtitle {"translate":"ms.end.e","fallback":"灵魂守护者 大获全胜","color":"red"}

# 详细信息
# 全局总览
scoreboard players set $play_time temp 0
execute as @a run scoreboard players operation @s cacu = @s stat_temp_play_time
scoreboard players operation $play_time temp > @a cacu
function base:caculate/time {tick:"$play_time",source_tick:"temp",cacu:"cacu",5:"#5",20:"#20",24:"#24",60:"#60",source_mem:"data",unit:"min"}
execute if score $5_ending countdown matches 128 run playsound ui.button.click player @a[team=!admin] 0 1000000 0 1000000
execute if score $5_ending countdown matches 128 run tellraw @a[team=!admin] [{"translate":"ms.info.end.1","fallback":"对局总览","color":"#7367F0"},{"text":" » ","bold":true}]
execute if score $5_ending countdown matches 128 run tellraw @a[team=!admin] [{"translate":"ms.info.end.2","fallback":"灵魂守卫者","color":"red"}," » ",{"selector":"@a[team=protect]"}]
execute if score $5_ending countdown matches 128 run tellraw @a[team=!admin] [{"translate":"ms.info.end.3","fallback":"复活灵魂","color":"green"}," » ",{"selector":"@a[team=finish]"}]
execute if score $5_ending countdown matches 128 run tellraw @a[team=!admin] [{"translate":"ms.info.end.4","fallback":"死亡灵魂","color":"gray"}," » ",{"selector":"@a[team=dead]"}]
execute if score $5_ending countdown matches 128 if score $min cacu matches ..09 if score $sec cacu matches ..09 run tellraw @a[team=!admin] [{"translate":"ms.info.end.5","fallback":"持续时间"}," » ",{"translate":"ms.notrans","fallback":"0%s:0%s","with":[{"score":{"name":"$min","objective":"cacu"}},{"score":{"name":"$sec","objective":"cacu"}}]}]
execute if score $5_ending countdown matches 128 if score $min cacu matches ..09 if score $sec cacu matches 10.. run tellraw @a[team=!admin] [{"translate":"ms.info.end.5","fallback":"持续时间"}," » ",{"translate":"ms.notrans","fallback":"0%s:%s","with":[{"score":{"name":"$min","objective":"cacu"}},{"score":{"name":"$sec","objective":"cacu"}}]}]
execute if score $5_ending countdown matches 128 if score $min cacu matches 10.. if score $sec cacu matches ..09 run tellraw @a[team=!admin] [{"translate":"ms.info.end.5","fallback":"持续时间"}," » ",{"translate":"ms.notrans","fallback":"%s:0%s","with":[{"score":{"name":"$min","objective":"cacu"}},{"score":{"name":"$sec","objective":"cacu"}}]}]
execute if score $5_ending countdown matches 128 if score $min cacu matches 10.. if score $sec cacu matches 10.. run tellraw @a[team=!admin] [{"translate":"ms.info.end.5","fallback":"持续时间"}," » ",{"translate":"ms.notrans","fallback":"%s:%s","with":[{"score":{"name":"$min","objective":"cacu"}},{"score":{"name":"$sec","objective":"cacu"}}]}]
# 个人结算
execute if score $5_ending countdown matches 128 run function main:state/5/exp
execute if score $5_ending countdown matches 128 unless score $mode temp matches 2 run function main:state/5/stats
execute if score $5_ending countdown matches 128 run tellraw @a[team=!admin] [{"translate":"ms.info.end.5","fallback":"稍后回到大厅……"},"\n"]

# 反馈链接
execute if score $5_ending countdown matches 80 run tellraw @a[team=!admin] [{"translate":"ms.info.feedback","fallback":"反馈","color":"yellow"}," - ",{"text":"[GitHub]","color":"#7B63AB","clickEvent":{"action":"open_url","value":"https://github.com/Heart-Fire-Project/midnight-soul/issues/new/choose"}}," ",{"translate":"ms.info.qq","fallback":"[QQ 群]","color":"#FFA488","clickEvent":{"action":"open_url","value":"https://qm.qq.com/cgi-bin/qm/qr?k=7lBn2CFMzpVvyAuan2Io-ifop62kNMGc&jump_from=webapi&authKey=sZcLbYxG4wtm0qq52m4D0+RTdnuHeIH3A+2qlyMClRU3mZgudXh0abRoiIR38gPj"}}," ",{"translate":"ms.info.dc","fallback":"[Discord]","color": "#0066FF","clickEvent":{"action":"open_url","value":"https://discord.com/invite/gWZVkvNS"}}," ",{"translate":"ms.info.forum","fallback":"[论坛]","color": "#FFDD55","clickEvent":{"action":"open_url","value":"https://forum.hfpro.top/"}},"\n"]
execute if score $5_ending countdown matches 80 run playsound ui.button.click player @a[team=!admin] 0 1000000 0 1000000

# 全场最佳
execute if score $5_ending countdown matches 80 run title @a[team=!admin] title {"translate":"ms.info.end.winner","fallback":"全场最佳","color":"#7367F0"}
execute if score $5_ending countdown matches 80 run title @a[team=!admin] subtitle {"selector":"@a[tag=winner]","color":"#BC78EC"}

# 把玩家都丢回去
execute if score $5_ending countdown matches 40 run function main:state/0/enter

# 清理
execute if score $5_ending countdown matches 20 run kill @e[tag=game_entity]
execute if score $5_ending countdown matches 10 run title @a reset
execute if score $5_ending countdown matches 10 run forceload remove all