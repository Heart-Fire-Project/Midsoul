function base:random {min:"1",max:"100"}

# 结束标题
execute if score $5_ending countdown matches 250 run title @a times 2 30 3
execute if score $5_ending countdown matches 240 run playsound entity.warden.sonic_charge player @a[team=!admin] 0 1000000 0 1000000
execute if score $5_ending countdown matches 240 run title @a title ""
execute if score $5_ending countdown matches 240 run title @a subtitle [{"text":"» ","color":"#7367F0","bold":true},{"translate":"ms.title.5.end","fallback":"游戏结束","bold":false},{"text":" «","bold":true}]

# 结果发布
execute if score $5_ending countdown matches 200 run title @a times 5 70 3
execute if score $5_ending countdown matches 200 run title @a title [{"score":{"name":"$soul_revive","objective":"data"},"color":"#52E5E7"},{"text":" - ","color":"white"},{"score":{"name":"$soul_death","objective":"data"},"color":"red"}]
execute if score $5_ending countdown matches 180 run scoreboard players operation $result data = $soul_revive data
execute if score $5_ending countdown matches 180 run scoreboard players operation $result data -= $soul_death data
execute if score $5_ending countdown matches 175 run title @a times 0 45 3
execute if score $5_ending countdown matches 175 run playsound entity.warden.sonic_boom player @a[team=!admin] 0 1000000 0 1000000
execute if score $5_ending countdown matches 175 if score $result data matches 3.. run title @a[team=!admin] subtitle [{"text":"⚕ ","color":"#52E5E7"},{"translate":"ms.info.end.a","fallback":"灵魂方大获全胜"}," ⚕"]
execute if score $5_ending countdown matches 175 if score $result data matches 1..2 run title @a[team=!admin] subtitle [{"text":"⚕ ","color":"#52E5E7"},{"translate":"ms.info.end.b","fallback":"灵魂方获胜","color":"#52E5E7"}," ⚕"]
execute if score $5_ending countdown matches 175 if score $result data matches 0 run title @a[team=!admin] subtitle [{"text":"⚕ ","color":"#DDDDDD"},{"translate":"ms.info.end.c","fallback":"平局"}," ⚕"]
execute if score $5_ending countdown matches 175 if score $result data matches -2..-1 run title @a[team=!admin] subtitle [{"text":"⚕ ","color":"red"},{"translate":"ms.info.end.d","fallback":"守卫者获胜"}," ⚕"]
execute if score $5_ending countdown matches 175 if score $result data matches ..-3 run title @a[team=!admin] subtitle [{"text":"⚕ ","color":"red"},{"translate":"ms.info.end.e","fallback":"守卫者大获全胜"}," ⚕"]
execute if score $5_ending countdown matches 135 run title @a times 0 1 0
execute if score $5_ending countdown matches 135 run title @a[team=!admin] title ""
execute if score $5_ending countdown matches 134 run title @a[team=!admin] title [{"score":{"name":"$soul_revive","objective":"data"},"color":"#52E5E7"},{"text":" - ","color":"white"},{"score":{"name":"$soul_death","objective":"data"},"color":"red"}]
execute if score $5_ending countdown matches 133 run title @a[team=!admin] title ""
execute if score $5_ending countdown matches 132 run title @a[team=!admin] title [{"score":{"name":"$soul_revive","objective":"data"},"color":"#52E5E7"},{"text":" - ","color":"white"},{"score":{"name":"$soul_death","objective":"data"},"color":"red"}]
execute if score $5_ending countdown matches 131 run title @a[team=!admin] title ""

# 全局总览
execute if score $5_ending countdown matches 125 run function base:caculate/time {tick:"$stat_playtime",source:"countdown",unit:"min"}
execute if score $5_ending countdown matches 125 run playsound ui.button.click player @a[team=!admin] 0 1000000 0 1000000
execute if score $5_ending countdown matches 125 run tellraw @a[team=!admin] ["\n\n\n\n\n\n\n\n\n\n"]
execute if score $5_ending countdown matches 125 run tellraw @a[team=!admin] [{"text":"-------------- ","color":"#7367F0"},{"translate":"ms.info.end.1","fallback":"对局总览"}," --------------"]
execute if score $5_ending countdown matches 125 run tellraw @a[team=!admin] [{"translate":"ms.info.end.2","fallback":"灵魂守卫者","color":"red"}," » ",{"selector":"@a[team=guardian]"}]
execute if score $5_ending countdown matches 125 run tellraw @a[team=!admin] [{"translate":"ms.info.end.3","fallback":"复活灵魂","color":"green"}," ×",{"score":{"name":"$soul_revive","objective":"data"}}," » ",{"selector":"@a[team=revive]"}]
execute if score $5_ending countdown matches 125 run tellraw @a[team=!admin] [{"translate":"ms.info.end.4","fallback":"死亡灵魂","color":"gray"}," ×",{"score":{"name":"$soul_death","objective":"data"}}," » ",{"selector":"@a[team=dead]"}]
execute if score $5_ending countdown matches 125 if score $min temp2 matches ..09 if score $sec temp2 matches ..09 run tellraw @a[team=!admin] [{"translate":"ms.info.end.5","fallback":"对局持续时间"}," » ",{"translate":"ms.notrans","fallback":"0%s:0%s","with":[{"score":{"name":"$min","objective":"temp2"}},{"score":{"name":"$sec","objective":"temp2"}}]}]
execute if score $5_ending countdown matches 125 if score $min temp2 matches ..09 if score $sec temp2 matches 10.. run tellraw @a[team=!admin] [{"translate":"ms.info.end.5","fallback":"对局持续时间"}," » ",{"translate":"ms.notrans","fallback":"0%s:%s","with":[{"score":{"name":"$min","objective":"temp2"}},{"score":{"name":"$sec","objective":"temp2"}}]}]
execute if score $5_ending countdown matches 125 if score $min temp2 matches 10.. if score $sec temp2 matches ..09 run tellraw @a[team=!admin] [{"translate":"ms.info.end.5","fallback":"对局持续时间"}," » ",{"translate":"ms.notrans","fallback":"%s:0%s","with":[{"score":{"name":"$min","objective":"temp2"}},{"score":{"name":"$sec","objective":"temp2"}}]}]
execute if score $5_ending countdown matches 125 if score $min temp2 matches 10.. if score $sec temp2 matches 10.. run tellraw @a[team=!admin] [{"translate":"ms.info.end.5","fallback":"对局持续时间"}," » ",{"translate":"ms.notrans","fallback":"%s:%s","with":[{"score":{"name":"$min","objective":"temp2"}},{"score":{"name":"$sec","objective":"temp2"}}]}]
execute if score $5_ending countdown matches 125 if score $result data matches 3.. run tellraw @a[team=!admin] [{"text":"","bold":false,"color":"aqua"},{"text":"» ","bold":true},{"translate":"ms.info.end.a","fallback":"灵魂方大获全胜"}," (+",{"score":{"name":"$result","objective":"data"}},")"]
execute if score $5_ending countdown matches 125 if score $result data matches 1..2 run tellraw @a[team=!admin] [{"text":"","bold":false,"color":"aqua"},{"text":"» ","bold":true},{"translate":"ms.info.end.b","fallback":"灵魂方获胜"}," (+",{"score":{"name":"$result","objective":"data"}},")"]
execute if score $5_ending countdown matches 125 if score $result data matches 0 run tellraw @a[team=!admin] [{"text":"","bold":false,"color":"#DDDDDD"},{"text":"» ","bold":true},{"translate":"ms.info.end.c","fallback":"平局"}," (±",{"score":{"name":"$result","objective":"data"}},")"]
execute if score $5_ending countdown matches 125 if score $result data matches -2..-1 run tellraw @a[team=!admin] [{"text":"","bold":false,"color":"red"},{"text":"» ","bold":true},{"translate":"ms.info.end.d","fallback":"守卫者获胜"}," (",{"score":{"name":"$result","objective":"data"}},")"]
execute if score $5_ending countdown matches 125 if score $result data matches ..-3 run tellraw @a[team=!admin] [{"text":"","bold":false,"color":"red"},{"text":"» ","bold":true},{"translate":"ms.info.end.e","fallback":"守卫者大获全胜"}," (",{"score":{"name":"$result","objective":"data"}},")"]

# 详细数据
execute if score $5_ending countdown matches 125 as @a[team=revive,scores={setting.simplified_result=0}] run function main:state/5/stat/soul
execute if score $5_ending countdown matches 125 as @a[team=dead,scores={setting.simplified_result=0}] run function main:state/5/stat/soul
execute if score $5_ending countdown matches 125 as @a[team=guardian,scores={setting.simplified_result=0}] run function main:state/5/stat/guardian

# 个人结算
execute if score $5_ending countdown matches 125 as @a[team=revive] run function main:state/5/caculate/1/soul
execute if score $5_ending countdown matches 125 as @a[team=dead] run function main:state/5/caculate/1/soul
execute if score $5_ending countdown matches 125 as @a[team=guardian] run function main:state/5/caculate/1/guardian

# 短期分判定
execute if score $5_ending countdown matches 125 if score $mode data matches 1 as @a[tag=game_player] run function main:state/5/rating

# 记录数据
execute if score $5_ending countdown matches 125 run tag @a remove mvp
execute if score $5_ending countdown matches 125 run scoreboard players set $highest temp 0
execute if score $5_ending countdown matches 125 run scoreboard players operation $highest temp > @a[tag=game_player] exp_temp
execute if score $5_ending countdown matches 125 as @a if score @s exp_temp = $highest temp run tag @s add mvp
execute if score $5_ending countdown matches 125 if score $mode data matches 1 as @a[tag=game_player] run function main:state/5/stat/record

# 全场最佳
execute if score $5_ending countdown matches 100 run title @a times 2 60 3
execute if score $5_ending countdown matches 100 run playsound ui.button.click player @a[team=!admin] 0 1000000 0 1000000
execute if score $5_ending countdown matches 100 run title @a[team=!admin] title {"translate":"ms.info.end.mvp","fallback":"全场最佳","color":"#96CBF1"}
execute if score $5_ending countdown matches 100 run title @a[team=!admin] subtitle {"selector":"@a[tag=mvp]","color":"yellow"}
execute if score $5_ending countdown matches 100 if score $mode data matches 2 run scoreboard players set @a exp_temp 0

# 剩下的部分
execute if score $5_ending countdown matches 80 run tellraw @a[team=!admin] [{"text":"» ","bold":true},{"translate":"ms.info.return","fallback":"稍后返回大厅……","bold":false}]
execute if score $5_ending countdown matches 30 run function main:state/0/enter
execute if score $5_ending countdown matches 20 run kill @e[tag=game_entity]
execute if score $5_ending countdown matches 10 run title @a reset
execute if score $5_ending countdown matches 10 run forceload remove all

# 循环核心
execute if score $5_ending countdown matches 1.. run schedule function main:state/5/loop/1 1t replace
scoreboard players remove $5_ending countdown 1