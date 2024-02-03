# [385] 管理员提示
execute if score $1_ticking countdown matches 385 run tellraw @a[team=!admin] [{"text":" » ","color":"#7367F0","bold":true},{"translate":"ms.starting.admin.info","fallback":"等待管理员选择是否加入游戏……","bold":false},"\n"]

# [360] 消磨时间小提示
execute if score $1_ticking countdown matches 360 run function base:random {storage:"data",max:"10",min:"1"}
execute if score $1_ticking countdown matches 360 if score $random data matches 01 run tellraw @a[team=!admin] [{"text":" » ","color":"#7367F0","bold":true},{"text":"Tips! ","bold":false},{"translate":"ms.tip.01","fallback":"灵魂之灯不只有你可以看到，守卫者也能看到……","bold":false},"\n"]
execute if score $1_ticking countdown matches 360 if score $random data matches 02 run tellraw @a[team=!admin] [{"text":" » ","color":"#7367F0","bold":true},{"text":"Tips! ","bold":false},{"translate":"ms.tip.02","fallback":"遇到灰色潜影盒时，不妨开启它获得灵魂宝物","bold":false},"\n"]
execute if score $1_ticking countdown matches 360 if score $random data matches 03 run tellraw @a[team=!admin] [{"text":" » ","color":"#7367F0","bold":true},{"text":"Tips! ","bold":false},{"translate":"ms.tip.03","fallback":"开启被诅咒的灵魂宝物箱后，会得到负面效果","bold":false},"\n"]
execute if score $1_ticking countdown matches 360 if score $random data matches 04 run tellraw @a[team=!admin] [{"text":" » ","color":"#7367F0","bold":true},{"text":"Tips! ","bold":false},{"translate":"ms.tip.04","fallback":"最终阶段第一传送门倒计时结束后，还有第二个传送门","bold":false},"\n"]
execute if score $1_ticking countdown matches 360 if score $random data matches 05 run tellraw @a[team=!admin] [{"text":" » ","color":"#7367F0","bold":true},{"text":"Tips! ","bold":false},{"translate":"ms.tip.05","fallback":"部分天赋会影响你的气息探测","bold":false},"\n"]
execute if score $1_ticking countdown matches 360 if score $random data matches 06 run tellraw @a[team=!admin] [{"text":" » ","color":"#7367F0","bold":true},{"text":"Tips! ","bold":false},{"translate":"ms.tip.06","fallback":"在某张地图中，有个废弃的传送门。无人知晓它的来历……","bold":false},"\n"]
execute if score $1_ticking countdown matches 360 if score $random data matches 07 run tellraw @a[team=!admin] [{"text":" » ","color":"#7367F0","bold":true},{"text":"Tips! ","bold":false},{"translate":"ms.tip.07","fallback":"有的宝物能救你的队友于水火之中……你问为什么不是你？","bold":false},"\n"]
execute if score $1_ticking countdown matches 360 if score $random data matches 08 run tellraw @a[team=!admin] [{"text":" » ","color":"#7367F0","bold":true},{"text":"Tips! ","bold":false},{"translate":"ms.tip.08","fallback":"遇见悬浮的东西，你就应该踩上去试试","bold":false},"\n"]
execute if score $1_ticking countdown matches 360 if score $random data matches 09 run tellraw @a[team=!admin] [{"text":" » ","color":"#7367F0","bold":true},{"text":"Tips! ","bold":false},{"translate":"ms.tip.09","fallback":"龙卷风是对单的，跑酷是让人追的","bold":false},"\n"]
execute if score $1_ticking countdown matches 360 if score $random data matches 10 run tellraw @a[team=!admin] [{"text":" » ","color":"#7367F0","bold":true},{"text":"Tips! ","bold":false},{"translate":"ms.tip.10","fallback":"如果你看到这个，代表你应该给点建议","bold":false},"\n"]

# [260] 给予序号
execute if score $1_ticking countdown matches 260 run scoreboard players add $player_id temp 1
execute if score $1_ticking countdown matches 260 run scoreboard players operation @r[team=prepare,scores={player_id=0}] player_id = $player_id temp
execute if score $1_ticking countdown matches 260 run execute if entity @a[team=prepare,scores={player_id=0}] run function main:state/1/time_ticking

# [255] 游戏主标题
execute if score $1_ticking countdown matches 255 run title @a[team=prepare] title {"translate":"ms.title","fallback":"午夜 🔯 灵魂","color":"#7367F0"}

# [240] 告知游戏版本
execute if score $1_ticking countdown matches 240 run tellraw @a[team=!admin] [{"text":" » ","bold":true},{"translate":"ms.info.mpver","fallback":"当前地图版本","bold":false}," ",{"text":"Σ Reset","bold":false}]
execute if score $1_ticking countdown matches 240 run tellraw @a[team=!admin] [{"text":" » ","bold":true},{"translate":"ms.info.rpver","fallback":"多语言包版本","bold":false}," ",{"translate":"ms.ver","fallback":"-","bold":false},"\n"]

# [235] 身份主标题
execute if score $1_ticking countdown matches 235 run title @a times 3 90 2
execute if score $1_ticking countdown matches 235 run title @a subtitle ""
execute if score $1_ticking countdown matches 235 run title @a[team=prepare] title {"translate":"ms.title.kit","fallback":"你的身份是"}

# [212 - 190] 身份副标题
execute if score $1_ticking countdown matches 212 run title @a[team=prepare] subtitle {"translate":"ms.title.kit.anime.1","fallback":"灵"}
execute if score $1_ticking countdown matches 205 run title @a[team=prepare] subtitle {"translate":"ms.title.kit.anime.2","fallback":"灵"}
execute if score $1_ticking countdown matches 197 run title @a[team=prepare] subtitle {"translate":"ms.title.kit.anime.3","fallback":"灵魂"}
execute if score $1_ticking countdown matches 190 run title @a[team=prepare] subtitle {"translate":"ms.title.kit.anime.4","fallback":"灵魂"}

# [170] 角色分配 · 灵气碎片
execute if score $1_ticking countdown matches 170 if score $gamemode data matches 1 run team join protect @a[scores={player_id=1}]
execute if score $1_ticking countdown matches 170 if score $gamemode data matches 1 run team join protect @a[scores={player_id=7}]
execute if score $1_ticking countdown matches 170 if score $gamemode data matches 1 run team join protect @a[scores={player_id=13}]
execute if score $1_ticking countdown matches 170 if score $gamemode data matches 1 run team join soul @a[team=prepare]

# [170] 角色分配 · 针锋奔逃
execute if score $1_ticking countdown matches 170 if score $gamemode data matches 2 as @a[team=prepare] run scoreboard players operation @s temp = @s player_id
execute if score $1_ticking countdown matches 170 if score $gamemode data matches 2 run scoreboard players operation @a[team=prepare] temp %= #2 data
execute if score $1_ticking countdown matches 170 if score $gamemode data matches 2 run team join protect @a[scores={temp=0}]
execute if score $1_ticking countdown matches 170 if score $gamemode data matches 2 run team join soul @a[scores={temp=1}]

# [170 - 164] 身份确认
execute if score $1_ticking countdown matches 170 run title @a[team=soul] subtitle {"translate":"ms.title.kit.soul","fallback":"⚕ 灵魂 ⚕","color":"#52E5E7"}
execute if score $1_ticking countdown matches 170 run title @a[team=protect] subtitle {"translate":"ms.title.kit.anime.5","fallback":"灵魂守","color":"#FFD5D5"}
execute if score $1_ticking countdown matches 168 run title @a[team=protect] subtitle {"translate":"ms.title.kit.anime.6","fallback":"灵魂守卫","color":"#FFAAAA"}
execute if score $1_ticking countdown matches 166 run title @a[team=protect] subtitle {"translate":"ms.title.kit.anime.7","fallback":"灵魂守卫者","color":"#FF8080"}
execute if score $1_ticking countdown matches 164 run title @a[team=protect] subtitle {"translate":"ms.title.kit.protect","fallback":"⚕ 灵魂守卫者 ⚕","color":"red"}

# [140 - 125] 身份说明
execute if score $1_ticking countdown matches 140 run title @a times 3 70 2
execute if score $1_ticking countdown matches 140 run title @a subtitle ""
execute if score $1_ticking countdown matches 140 run title @a[team=soul] title {"translate":"ms.title.kit.soul","fallback":"⚕ 灵魂 ⚕","color":"#52E5E7"}
execute if score $1_ticking countdown matches 140 run title @a[team=protect] title {"translate":"ms.title.kit.protect","fallback":"⚕ 灵魂守卫者 ⚕","color":"red"}
execute if score $1_ticking countdown matches 125 run title @a[team=soul] subtitle {"translate":"ms.title.soul.goal","fallback":"收集碎片，于月下复活自己"}
execute if score $1_ticking countdown matches 125 run title @a[team=protect] subtitle {"translate":"ms.title.protect.goal","fallback":"阻止灵魂，让他们终困于此"}

# [120] 技能与天赋随机
execute if score $1_ticking countdown matches 120 as @a[team=!admin] run function main:state/1/ability/random

# [100 - 050] 详细能力展示
execute if score $1_ticking countdown matches 100 run function main:state/1/ability/skill
execute if score $1_ticking countdown matches 090 run function main:state/1/ability/skill_detail
execute if score $1_ticking countdown matches 080 run function main:state/1/ability/talent {"num":1}
execute if score $1_ticking countdown matches 070 run function main:state/1/ability/talent_detail {"num":1}
execute if score $1_ticking countdown matches 060 run function main:state/1/ability/talent {"num":2}
execute if score $1_ticking countdown matches 050 run function main:state/1/ability/talent_detail {"num":2}

# [000] 进入下一阶段
execute if score $1_ticking countdown matches 000 run function main:state/2/enter

# 音效
execute if score $1_ticking countdown matches 385 run playsound block.note_block.bit player @a 0 1000000 0 1000000 1
execute if score $1_ticking countdown matches 360 run playsound block.note_block.bit player @a 0 1000000 0 1000000 1.2
execute if score $1_ticking countdown matches 335 run playsound block.note_block.bit player @a 0 1000000 0 1000000 1.2
execute if score $1_ticking countdown matches 315 run playsound block.note_block.bit player @a 0 1000000 0 1000000 1.4
execute if score $1_ticking countdown matches 300 run playsound block.note_block.bit player @a 0 1000000 0 1000000 1.4
execute if score $1_ticking countdown matches 290 run playsound block.note_block.bit player @a 0 1000000 0 1000000 1.6
execute if score $1_ticking countdown matches 285 run playsound block.note_block.bit player @a 0 1000000 0 1000000 1.6
execute if score $1_ticking countdown matches 280 run playsound block.note_block.bit player @a 0 1000000 0 1000000 1.8
execute if score $1_ticking countdown matches 275 run playsound block.note_block.bit player @a 0 1000000 0 1000000 1.8
execute if score $1_ticking countdown matches 270 run playsound block.note_block.bit player @a 0 1000000 0 1000000 2
execute if score $1_ticking countdown matches 265 run playsound block.note_block.chime player @a 0 1000000 0 1000000 2

execute if score $1_ticking countdown matches 255 run playsound block.beacon.activate ambient @a[team=prepare] 0 1000000 0 1000000
execute if score $1_ticking countdown matches 212 run playsound block.dispenser.dispense ambient @a[team=prepare] 0 1000000 0 1000000
execute if score $1_ticking countdown matches 197 run playsound block.dispenser.dispense ambient @a[team=prepare] 0 1000000 0 1000000
execute if score $1_ticking countdown matches 170 run playsound ambient.basalt_deltas.mood ambient @a[team=soul] 0 1000000 0 1000000
execute if score $1_ticking countdown matches 170 run playsound block.dispenser.dispense ambient @a[team=protect] 0 1000000 0 1000000
execute if score $1_ticking countdown matches 168 run playsound block.dispenser.dispense ambient @a[team=protect] 0 1000000 0 1000000
execute if score $1_ticking countdown matches 166 run playsound block.dispenser.dispense ambient @a[team=protect] 0 1000000 0 1000000
execute if score $1_ticking countdown matches 164 run playsound block.respawn_anchor.set_spawn ambient @a[team=protect] 0 1000000 0 1000000

execute if score $1_ticking countdown matches 100 run playsound block.dispenser.fail ambient @a[tag=game_player] 0 1000000 0 1000000
execute if score $1_ticking countdown matches 090 run playsound block.dispenser.fail ambient @a[tag=game_player] 0 1000000 0 1000000
execute if score $1_ticking countdown matches 080 run playsound block.dispenser.fail ambient @a[tag=game_player] 0 1000000 0 1000000
execute if score $1_ticking countdown matches 070 run playsound block.dispenser.fail ambient @a[tag=game_player] 0 1000000 0 1000000
execute if score $1_ticking countdown matches 060 run playsound block.dispenser.fail ambient @a[tag=game_player] 0 1000000 0 1000000
execute if score $1_ticking countdown matches 050 run playsound block.dispenser.fail ambient @a[tag=game_player] 0 1000000 0 1000000