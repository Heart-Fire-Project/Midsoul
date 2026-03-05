# 结束标题
execute if score $5_ending tick.general matches 240 run title @a times 2 30 3
execute if score $5_ending tick.general matches 230 run playsound entity.warden.sonic_charge player @a 0 1000000 0 120000
execute if score $5_ending tick.general matches 230 run title @a title ""
execute if score $5_ending tick.general matches 230 run title @a subtitle [{text:"» ",color:"#7367F0",bold:true},{translate:"ms.title.99.end",fallback:"游戏结束",bold:false},{text:" «",bold:true}]

# 结果发布
execute if score $5_ending tick.general matches 190 run title @a times 5 70 3
execute if score $5_ending tick.general matches 190 run title @a title [{score:{name:"$soul_revive",objective:"data"},color:"#52E5E7"},{text:" - ",color:"white"},{score:{name:"$soul_death",objective:"data"},color:"red"}]
execute if score $5_ending tick.general matches 170 run scoreboard players operation $result data = $soul_revive data
execute if score $5_ending tick.general matches 170 run scoreboard players operation $result data -= $soul_death data
execute if score $5_ending tick.general matches 165 run title @a times 0 45 3
execute if score $5_ending tick.general matches 165 run playsound entity.warden.sonic_boom player @a 0 1000000 0 120000
execute if score $5_ending tick.general matches 165 if score $result data matches 3.. run title @a subtitle [{text:"⚕ ",color:"#52E5E7"},{translate:"ms.info.end.1.a",fallback:"灵魂方大获全胜"}," ⚕"]
execute if score $5_ending tick.general matches 165 if score $result data matches 1..2 run title @a subtitle [{text:"⚕ ",color:"#52E5E7"},{translate:"ms.info.end.1.b",fallback:"灵魂方获胜",color:"#52E5E7"}," ⚕"]
execute if score $5_ending tick.general matches 165 if score $result data matches 0 run title @a subtitle [{text:"⚕ ",color:"#DDDDDD"},{translate:"ms.info.end.1.c",fallback:"平局"}," ⚕"]
execute if score $5_ending tick.general matches 165 if score $result data matches -2..-1 run title @a subtitle [{text:"⚕ ",color:"red"},{translate:"ms.info.end.1.d",fallback:"守卫者获胜"}," ⚕"]
execute if score $5_ending tick.general matches 165 if score $result data matches ..-3 run title @a subtitle [{text:"⚕ ",color:"red"},{translate:"ms.info.end.1.e",fallback:"守卫者大获全胜"}," ⚕"]
execute if score $5_ending tick.general matches 125 run title @a times 0 1 0
execute if score $5_ending tick.general matches 125 run title @a title ""
execute if score $5_ending tick.general matches 124 run title @a title [{score:{name:"$soul_revive",objective:"data"},color:"#52E5E7"},{text:" - ",color:"white"},{score:{name:"$soul_death",objective:"data"},color:"red"}]
execute if score $5_ending tick.general matches 123 run title @a title ""
execute if score $5_ending tick.general matches 122 run title @a title [{score:{name:"$soul_revive",objective:"data"},color:"#52E5E7"},{text:" - ",color:"white"},{score:{name:"$soul_death",objective:"data"},color:"red"}]
execute if score $5_ending tick.general matches 121 run title @a title ""

# 全局总览
execute if score $5_ending tick.general matches 115 run function base:caculate/time {tick:"$stat_gametime",source:"tick.general",unit:"min"}
execute if score $5_ending tick.general matches 115 run playsound ui.button.click player @a 0 1000000 0 120000
execute if score $5_ending tick.general matches 115 run tellraw @a ["\n\n\n\n\n\n\n\n\n\n"]
execute if score $5_ending tick.general matches 115 run tellraw @a [{text:"-------------- ",color:"#7367F0"},{translate:"ms.info.end.1.1",fallback:"对局总览"}," --------------"]
execute if score $5_ending tick.general matches 115 run tellraw @a [{translate:"ms.info.end.1.2",fallback:"灵魂守卫者",color:"red"}," » ",{selector:"@a[team=guardian]"}]
execute if score $5_ending tick.general matches 115 run tellraw @a [{translate:"ms.info.end.1.3",fallback:"复活灵魂",color:"green"}," ×",{score:{name:"$soul_revive",objective:"data"}}," » ",{selector:"@a[team=revive]"}]
execute if score $5_ending tick.general matches 115 run tellraw @a [{translate:"ms.info.end.1.4",fallback:"消亡灵魂",color:"gray"}," ×",{score:{name:"$soul_death",objective:"data"}}," » ",{selector:"@a[team=dead]"}]
execute if score $5_ending tick.general matches 115 if score $min temp2 matches ..09 if score $sec temp2 matches ..09 run tellraw @a [{translate:"ms.info.end.1.5",fallback:"对局持续时间"}," » ",{translate:"ms.notrans",fallback:"0%s:0%s",with:[{score:{name:"$min",objective:"temp2"}},{score:{name:"$sec",objective:"temp2"}}]}]
execute if score $5_ending tick.general matches 115 if score $min temp2 matches ..09 if score $sec temp2 matches 10.. run tellraw @a [{translate:"ms.info.end.1.5",fallback:"对局持续时间"}," » ",{translate:"ms.notrans",fallback:"0%s:%s",with:[{score:{name:"$min",objective:"temp2"}},{score:{name:"$sec",objective:"temp2"}}]}]
execute if score $5_ending tick.general matches 115 if score $min temp2 matches 10.. if score $sec temp2 matches ..09 run tellraw @a [{translate:"ms.info.end.1.5",fallback:"对局持续时间"}," » ",{translate:"ms.notrans",fallback:"%s:0%s",with:[{score:{name:"$min",objective:"temp2"}},{score:{name:"$sec",objective:"temp2"}}]}]
execute if score $5_ending tick.general matches 115 if score $min temp2 matches 10.. if score $sec temp2 matches 10.. run tellraw @a [{translate:"ms.info.end.1.5",fallback:"对局持续时间"}," » ",{translate:"ms.notrans",fallback:"%s:%s",with:[{score:{name:"$min",objective:"temp2"}},{score:{name:"$sec",objective:"temp2"}}]}]
execute if score $5_ending tick.general matches 115 if score $result data matches 3.. run tellraw @a [{text:"",bold:false,color:"aqua"},{text:"» ",bold:true},{translate:"ms.info.end.1.a",fallback:"灵魂方大获全胜"}," (+",{score:{name:"$result",objective:"data"}},")"]
execute if score $5_ending tick.general matches 115 if score $result data matches 1..2 run tellraw @a [{text:"",bold:false,color:"aqua"},{text:"» ",bold:true},{translate:"ms.info.end.1.b",fallback:"灵魂方获胜"}," (+",{score:{name:"$result",objective:"data"}},")"]
execute if score $5_ending tick.general matches 115 if score $result data matches 0 run tellraw @a [{text:"",bold:false,color:"#DDDDDD"},{text:"» ",bold:true},{translate:"ms.info.end.1.c",fallback:"平局"}," (±",{score:{name:"$result",objective:"data"}},")"]
execute if score $5_ending tick.general matches 115 if score $result data matches -2..-1 run tellraw @a [{text:"",bold:false,color:"red"},{text:"» ",bold:true},{translate:"ms.info.end.1.d",fallback:"守卫者获胜"}," (",{score:{name:"$result",objective:"data"}},")"]
execute if score $5_ending tick.general matches 115 if score $result data matches ..-3 run tellraw @a [{text:"",bold:false,color:"red"},{text:"» ",bold:true},{translate:"ms.info.end.1.e",fallback:"守卫者大获全胜"}," (",{score:{name:"$result",objective:"data"}},")"]

# 个人结算
execute if score $5_ending tick.general matches 115 as @a[team=revive] run function main:state/99/caculate/1/soul
execute if score $5_ending tick.general matches 115 as @a[team=dead] run function main:state/99/caculate/1/soul
execute if score $5_ending tick.general matches 115 as @a[team=soul] run function main:state/99/caculate/1/soul
execute if score $5_ending tick.general matches 115 as @a[team=guardian] run function main:state/99/caculate/1/guardian

# 短期分判定
execute if score $rated_play data matches 0 run data merge storage ms:mode {affact_rating:false}
execute if score $5_ending tick.general matches 115 if data storage ms:mode {affact_rating:true} as @a[tag=game_player] run function main:state/99/rating
execute if score $5_ending tick.general matches 115 unless data storage ms:setting {hide_rating:true} if data storage ms:mode {affact_rating:false} run tellraw @a[tag=game_player] [{text:" ✕ ",color:"gray"},{translate:"ms.info.no_rating",fallback:"本局游戏不影响短期分",bold:false}]

# 记录数据
execute if score $rated_play data matches 0 run data merge storage ms:mode {affact_data:false}
execute if score $5_ending tick.general matches 115 run tag @a remove mvp
execute if score $5_ending tick.general matches 115 run scoreboard players set $highest temp 0
execute if score $5_ending tick.general matches 115 run scoreboard players operation $highest temp > @a[tag=game_player] exp.temp
execute if score $5_ending tick.general matches 115 as @a if score @s exp.temp = $highest temp run tag @s add mvp
execute if score $5_ending tick.general matches 115 if data storage ms:mode {affact_data:true} as @a[tag=game_player] run function main:state/99/record

# 全场最佳
execute if score $5_ending tick.general matches 90 run title @a times 2 60 3
execute if score $5_ending tick.general matches 90 run playsound ui.button.click player @a 0 1000000 0 120000
execute if score $5_ending tick.general matches 90 run title @a title {translate:"ms.title.99.mvp",fallback:"全场最佳",color:"#96CBF1"}
execute if score $5_ending tick.general matches 90 run title @a subtitle {selector:"@a[tag=mvp]",color:"yellow"}
execute if score $5_ending tick.general matches 90 if data storage ms:mode {affact_exp:false} run scoreboard players set @a exp.temp 0

# 剩下的部分
execute if score $5_ending tick.general matches 70 run tellraw @a [{text:"» ",bold:true},{translate:"ms.info.99.return",fallback:"稍后返回大厅……",bold:false}]
execute if score $5_ending tick.general matches 20 run kill @e[tag=game_entity]
execute if score $5_ending tick.general matches 20 run title @a reset
execute if score $5_ending tick.general matches 20 run forceload remove all
execute if score $5_ending tick.general matches 20 run forceload add -16 -16 16 16
execute if score $5_ending tick.general matches 1 run weather clear
execute if score $5_ending tick.general matches 1 run function main:state/0/enter