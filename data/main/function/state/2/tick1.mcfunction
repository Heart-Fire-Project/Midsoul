scoreboard players remove $2_starting tick.general 1

# 计算当前秒数 [不显示毫秒，+1 补位]
function base:caculate/time {unit:"sec",tick:"$2_starting",source:"tick.general"}
scoreboard players add $sec temp2 1

# 设置数值
execute store result bossbar midsoul:info value run scoreboard players get $2_starting tick.general
execute store result bossbar midsoul:2 value run scoreboard players get $2_starting tick.general
execute store result bossbar midsoul:3 value run scoreboard players get $2_starting tick.general

# 设置名称
bossbar set midsoul:info name {translate:"ms.bossbar.2.starting",fallback:"即将 » %s « 开始",color:"white",with:[{score:{objective:"temp2",name:"$sec"}}]}
bossbar set midsoul:2 name {translate:"ms.bossbar.2.starting",fallback:"即将 » %s « 开始",color:"#52E5E7",with:[{score:{objective:"temp2",name:"$sec"}}]}
bossbar set midsoul:3 name {translate:"ms.bossbar.2.starting",fallback:"即将 » %s « 开始",color:"red",with:[{score:{objective:"temp2",name:"$sec"}}]}

# 进入阶段特效
execute if score $2_starting tick.general matches 119 run bossbar set midsoul:2 name ""
execute if score $2_starting tick.general matches 118 run bossbar set midsoul:2 name {translate:"ms.bossbar.2.starting",fallback:"即将 » %s « 开始",color:"#52E5E7",with:[{score:{objective:"temp2",name:"$sec"}}]}
execute if score $2_starting tick.general matches 117 run bossbar set midsoul:2 name ""
execute if score $2_starting tick.general matches 116 run bossbar set midsoul:2 name {translate:"ms.bossbar.2.starting",fallback:"即将 » %s « 开始",color:"#52E5E7",with:[{score:{objective:"temp2",name:"$sec"}}]}
execute if score $2_starting tick.general matches 119 run bossbar set midsoul:3 name ""
execute if score $2_starting tick.general matches 118 run bossbar set midsoul:3 name {translate:"ms.bossbar.2.starting",fallback:"即将 » %s « 开始",color:"red",with:[{score:{objective:"temp2",name:"$sec"}}]}
execute if score $2_starting tick.general matches 117 run bossbar set midsoul:3 name ""
execute if score $2_starting tick.general matches 116 run bossbar set midsoul:3 name {translate:"ms.bossbar.2.starting",fallback:"即将 » %s « 开始",color:"red",with:[{score:{objective:"temp2",name:"$sec"}}]}
execute if score $2_starting tick.general matches 117 run scoreboard objectives setdisplay sidebar
execute if score $2_starting tick.general matches 115 run scoreboard objectives setdisplay sidebar info
execute if score $2_starting tick.general matches 113 run scoreboard objectives setdisplay sidebar
execute if score $2_starting tick.general matches 112 run scoreboard objectives setdisplay sidebar info
execute if score $2_starting tick.general matches 111 run scoreboard objectives setdisplay sidebar

# 离开阶段特效
execute if score $2_starting tick.general matches 4 run bossbar set midsoul:info visible false
execute if score $2_starting tick.general matches 3 run bossbar set midsoul:info visible true
execute if score $2_starting tick.general matches 2 run bossbar set midsoul:info visible false
execute if score $2_starting tick.general matches 1 run bossbar set midsoul:info visible true
execute if score $2_starting tick.general matches 4 run bossbar set midsoul:2 visible false
execute if score $2_starting tick.general matches 3 run bossbar set midsoul:2 visible true
execute if score $2_starting tick.general matches 2 run bossbar set midsoul:2 visible false
execute if score $2_starting tick.general matches 1 run bossbar set midsoul:2 visible true
execute if score $2_starting tick.general matches 0 run bossbar set midsoul:2 players
execute if score $2_starting tick.general matches 4 run bossbar set midsoul:3 visible false
execute if score $2_starting tick.general matches 3 run bossbar set midsoul:3 visible true
execute if score $2_starting tick.general matches 2 run bossbar set midsoul:3 visible false
execute if score $2_starting tick.general matches 1 run bossbar set midsoul:3 visible true
execute if score $2_starting tick.general matches 0 run bossbar set midsoul:3 players

# 双守卫判定
execute if score $2_starting tick.general matches 90 run scoreboard players set $player temp 0
execute if score $2_starting tick.general matches 90 run scoreboard players set $two_guardian state 0
execute if score $2_starting tick.general matches 90 as @a[tag=game_player] run scoreboard players add $player temp 1
execute if score $2_starting tick.general matches 90 if score $mode data matches 1 if score $player temp matches 7.. run scoreboard players set $two_guardian state 1
execute if score $2_starting tick.general matches 90 if score $two_guardian state matches 1 run playsound entity.villager.work_toolsmith player @a 0 1000000 0 120000
execute if score $2_starting tick.general matches 90 if score $two_guardian state matches 1 run tellraw @a ["\n",{text:"🔧 ",color:"#9896F1"},{translate:"ms.info.two_guardian",fallback:"双守卫特殊机制",color:"#9896F1"},"\n",{translate:"ms.info.two_guardian.desc.2",fallback:"本局游戏中，灵魂所受伤害 -20%%（同类效果不叠加）"}]

# 时间轴
execute if score $2_starting tick.general matches 60 run playsound block.note_block.harp player @a 0 1000000 0 120000
execute if score $2_starting tick.general matches 40 run playsound block.note_block.harp player @a 0 1000000 0 120000
execute if score $2_starting tick.general matches 20 run playsound block.note_block.harp player @a 0 1000000 0 120000
execute if score $2_starting tick.general matches 0 run function main:state/3/enter with storage ms:map