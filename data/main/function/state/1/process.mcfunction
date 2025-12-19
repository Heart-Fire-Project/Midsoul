scoreboard players remove $1_process tick.general 1

# 1439 | 管理员确认 跳过判定
execute if score $1_process tick.general matches 1439 run scoreboard players set $player temp 0
execute if score $1_process tick.general matches 1439 as @a[tag=game_player] run scoreboard players add $player temp 1
execute if score $1_process tick.general matches 1439 unless entity @a[team=admin] run scoreboard players set $1_process tick.general 1319
execute if score $1_process tick.general matches 1439 unless score $player temp matches ..9 run scoreboard players set $1_process tick.general 1319

# 1439 | 管理员确认 开始
execute if score $1_process tick.general matches 1439 run scoreboard players set $1_single tick.general 120
execute if score $1_process tick.general matches 1439 run bossbar set midsoul:1 color pink
execute if score $1_process tick.general matches 1439 run bossbar set midsoul:1 max 120
execute if score $1_process tick.general matches 1439 run bossbar set midsoul:1 style notched_6
execute if score $1_process tick.general matches 1439 run bossbar set midsoul:1 visible true
execute if score $1_process tick.general matches 1439 run bossbar set midsoul:1 players @a[team=!spectator]

# 1439 >> 1320 | 管理员确认 中途
execute if score $1_process tick.general matches 1320..1439 run function main:state/1/bossbar/admin
execute if score $1_process tick.general matches 1320..1439 as @a[team=admin,scores={detect.interact=5000},tag=!check_join] run function main:state/1/player_enter/transfer
execute if score $1_process tick.general matches 1320..1439 run tag @a[team=admin,scores={detect.interact=5001},tag=!check_join] add check_join
execute if score $1_process tick.general matches 1380 run playsound block.note_block.xylophone player @a[team=!spectator] 0 1000000 0 120000
execute if score $1_process tick.general matches 1360 run playsound block.note_block.xylophone player @a[team=!spectator] 0 1000000 0 120000
execute if score $1_process tick.general matches 1340 run playsound block.note_block.xylophone player @a[team=!spectator] 0 1000000 0 120000
execute unless entity @a[team=admin,tag=!check_join] if score $1_process tick.general matches 1320.. run scoreboard players set $1_process tick.general 1320

# 1320 | 管理员确认 结束
execute if score $1_process tick.general matches 1320 run playsound block.note_block.iron_xylophone player @a[team=!spectator] 0 1000000 0 120000
execute if score $1_process tick.general matches 1320 run bossbar set midsoul:1 players
execute if score $1_process tick.general matches 1320 run scoreboard players operation $1_tick tick.general -= $1_single tick.general

# 1319 | 回响判定
execute if score $1_process tick.general matches 1319 run scoreboard players set $echo data 0
execute if score $1_process tick.general matches 1319 store result score $random temp2 run random value 1..100
execute if score $1_process tick.general matches 1319 if score $random temp2 <= $echo_chance setting run function main:state/1/echo

# 1319 | 普通标题
execute if score $1_process tick.general matches 1319 run title @a[tag=game_player] times 3 50 4
execute if score $1_process tick.general matches 1319 run playsound block.beacon.activate ambient @a[tag=game_player] 0 1000000 0 120000 1
execute if score $1_process tick.general matches 1319 run title @a[tag=game_player] title {translate:"ms.title",fallback:"午夜 🔯 灵魂",color:"#7367F0"}

# 1295 >> 1261 | 回响标题
execute if score $1_process tick.general matches 1295 unless score $echo data matches 0 run title @a[tag=game_player] times 0 20 4
execute if score $1_process tick.general matches 1291 unless score $echo data matches 0 run title @a[tag=game_player] title {translate:"ms.title",fallback:"午夜 🔯 灵魂",color:"#7367F0"}
execute if score $1_process tick.general matches 1290 unless score $echo data matches 0 run playsound event.mob_effect.trial_omen player @a[tag=game_player] 0 1000000 0 120000 0.8
execute if score $1_process tick.general matches 1290 unless score $echo data matches 0 run title @a[tag=game_player] subtitle {translate:"ms.echo.name",fallback:"回响占位符",color:"#8966EF",obfuscated:true}
execute if score $1_process tick.general matches 1290 unless score $echo data matches 0 run title @a[tag=game_player] title {translate:"ms.title",fallback:"午夜 🔯 灵魂",color:"#8966EF"}
execute if score $1_process tick.general matches 1289 unless score $echo data matches 0 run title @a[tag=game_player] subtitle {translate:"ms.echo.name",fallback:"回响占位符",color:"#9F64EE",obfuscated:true}
execute if score $1_process tick.general matches 1289 unless score $echo data matches 0 run title @a[tag=game_player] title {translate:"ms.title",fallback:"午夜 🔯 灵魂",color:"#9F64EE"}
execute if score $1_process tick.general matches 1288 unless score $echo data matches 0 run title @a[tag=game_player] subtitle {translate:"ms.echo.name",fallback:"回响占位符",color:"#B563EE",obfuscated:true}
execute if score $1_process tick.general matches 1288 unless score $echo data matches 0 run title @a[tag=game_player] title {translate:"ms.title",fallback:"午夜 🔯 灵魂",color:"#B563EE"}
execute if score $1_process tick.general matches 1287 unless score $echo data matches 0 run title @a[tag=game_player] subtitle {translate:"ms.echo.name",fallback:"回响占位符",color:"#CB61ED",obfuscated:true}
execute if score $1_process tick.general matches 1287 unless score $echo data matches 0 run title @a[tag=game_player] title {translate:"ms.title",fallback:"午夜 🔯 灵魂",color:"#CB61ED"}
execute if score $1_process tick.general matches 1286 unless score $echo data matches 0 run title @a[tag=game_player] subtitle {translate:"ms.echo.name",fallback:"回响占位符",color:"#E160EC",obfuscated:true}
execute if score $1_process tick.general matches 1286 unless score $echo data matches 0 run title @a[tag=game_player] title {translate:"ms.title",fallback:"午夜 🔯 灵魂",color:"#E160EC"}
execute if score $1_process tick.general matches 1285 unless score $echo data matches 0 run function main:state/1/echo_subtitle
execute if score $1_process tick.general matches 1285 unless score $echo data matches 0 run title @a[tag=game_player] title {translate:"ms.title",fallback:"午夜 🔯 灵魂",color:"#F75EEB"}
execute if score $1_process tick.general matches 1269 unless score $echo data matches 0 run title @a[tag=game_player] clear
execute if score $1_process tick.general matches 1267 unless score $echo data matches 0 run function main:state/1/echo_subtitle
execute if score $1_process tick.general matches 1267 unless score $echo data matches 0 run title @a[tag=game_player] title {translate:"ms.title",fallback:"午夜 🔯 灵魂",color:"#F75EEB"}
execute if score $1_process tick.general matches 1263 unless score $echo data matches 0 run title @a[tag=game_player] clear
execute if score $1_process tick.general matches 1262 unless score $echo data matches 0 run function main:state/1/echo_subtitle
execute if score $1_process tick.general matches 1262 unless score $echo data matches 0 run title @a[tag=game_player] title {translate:"ms.title",fallback:"午夜 🔯 灵魂",color:"#F75EEB"}
execute if score $1_process tick.general matches 1261 unless score $echo data matches 0 run title @a[tag=game_player] clear

# 1265 >> 1260 | 本场详情 & 选定地图
execute if score $1_process tick.general matches 1265 run function main:state/1/game_info
execute if score $1_process tick.general matches 1264 run scoreboard objectives setdisplay sidebar info
execute if score $1_process tick.general matches 1263 run scoreboard objectives setdisplay sidebar
execute if score $1_process tick.general matches 1262 run scoreboard objectives setdisplay sidebar info
execute if score $1_process tick.general matches 1261 run scoreboard objectives setdisplay sidebar
execute if score $1_process tick.general matches 1260 run scoreboard objectives setdisplay sidebar info

# 1260 | 详情信息
execute if score $1_process tick.general matches 1260 unless score $echo data matches 0 as @a run function main:lib/echo
execute if score $1_process tick.general matches 1260 unless score $echo data matches 0 run advancement grant @a[tag=game_player] only main:tutorial/mechanic/4

# 1239 | 阵营选择 跳过判定
execute if score $1_process tick.general matches 1239 run scoreboard players operation $role_assign data = $role_assign setting
execute if score $1_process tick.general matches 1239 if score $role_assign data matches 0 if data storage ms:mode {role:"1"} run scoreboard players set $role_assign data 1
execute if score $1_process tick.general matches 1239 unless score $role_assign data matches 2..3 run scoreboard players set $1_process tick.general 1019

# 1239 | 阵营选择 开始
execute if score $1_process tick.general matches 1239 run scoreboard players set $1_single tick.general 200
execute if score $1_process tick.general matches 1239 run bossbar set midsoul:1 color purple
execute if score $1_process tick.general matches 1239 run bossbar set midsoul:1 max 200
execute if score $1_process tick.general matches 1239 run bossbar set midsoul:1 style notched_10
execute if score $1_process tick.general matches 1239 run bossbar set midsoul:1 visible true
execute if score $1_process tick.general matches 1239 run bossbar set midsoul:1 players @a[team=!spectator]
execute if score $1_process tick.general matches 1239 run scoreboard players set @a[tag=game_player] state 0
execute if score $1_process tick.general matches 1239 run playsound weather.end_flash player @a[tag=game_player] 0 1000000 0 120000
execute if score $1_process tick.general matches 1239 as @a[tag=game_player] run function main:state/1/role/panel

# 1239 >> 1040 | 阵营选择 中途
execute if score $1_process tick.general matches 1040..1239 run function main:state/1/bossbar/role
execute if score $1_process tick.general matches 1040..1239 as @a[scores={detect.interact=5401..5403},tag=game_player] run function main:state/1/role/selecting
execute if score $1_process tick.general matches 1230 run playsound ambient.soul_sand_valley.additions player @a[tag=game_player] 0 1000000 0 120000 1
execute if score $1_process tick.general matches 1100 run playsound block.note_block.bit player @a[tag=game_player] 0 1000000 0 120000 1
execute if score $1_process tick.general matches 1080 run playsound block.note_block.bit player @a[tag=game_player] 0 1000000 0 120000 1
execute if score $1_process tick.general matches 1060 run playsound block.note_block.bit player @a[tag=game_player] 0 1000000 0 120000 1

# 1040 | 阵营选择 结束
execute if score $1_process tick.general matches 1040 run playsound block.note_block.bit player @a[tag=game_player] 0 1000000 0 120000 2
execute if score $1_process tick.general matches 1040 run bossbar set midsoul:1 players

# 1019 | 阵营分配标题
execute if score $1_process tick.general matches 1019 run title @a times 3 50 2
execute if score $1_process tick.general matches 1019 run title @a subtitle ""
execute if score $1_process tick.general matches 1019 run title @a[tag=game_player] title {translate:"ms.title.1.role",fallback:"你的身份是"}

# 1000 | 分配玩家序号
execute if score $1_process tick.general matches 1000 run scoreboard players reset $entity_id temp
execute if score $1_process tick.general matches 1000 run scoreboard players reset * entity_id
execute if score $1_process tick.general matches 1000 run scoreboard players set @a[tag=game_player] entity_id 0
execute if score $1_process tick.general matches 1000 run function main:state/1/player_id

# 1000 | 阵营分配
execute if score $1_process tick.general matches 1000 if score $role_assign data matches 3 run team join soul @a[scores={state=1}]
execute if score $1_process tick.general matches 1000 if score $role_assign data matches 3 run team join guardian @a[scores={state=2}]
execute if score $1_process tick.general matches 1000 if score $mode data matches 1 run function main:state/1/role/random/1
execute if score $1_process tick.general matches 1000 if score $mode data matches 2 run function main:state/1/role/random/2

# 1000 | 阵营小标题
execute if score $1_process tick.general matches 1000 run title @a[team=soul] subtitle [{text:"⚕ ",color:"#52E5E7"},{translate:"ms.soul",fallback:"灵魂"}," ⚕"]
execute if score $1_process tick.general matches 1000 run title @a[team=guardian] subtitle [{text:"⚕ ",color:"red"},{translate:"ms.guardian",fallback:"灵魂守卫者"}," ⚕"]
execute if score $1_process tick.general matches 1000 run playsound block.trial_spawner.about_to_spawn_item player @a[team=soul] 0 1000000 0 120000
execute if score $1_process tick.general matches 1000 run playsound block.respawn_anchor.set_spawn player @a[team=guardian] 0 1000000 0 120000

# 980 | 阵营分配 Boss 栏
execute if score $1_process tick.general matches 980 run bossbar set midsoul:2 color blue
execute if score $1_process tick.general matches 980 run bossbar set midsoul:2 style notched_10
execute if score $1_process tick.general matches 980 run bossbar set midsoul:2 value 1010000
execute if score $1_process tick.general matches 980 run bossbar set midsoul:2 name [{text:"⚕ ",color:"#52E5E7"},{translate:"ms.soul",fallback:"灵魂"}," ⚕ ",{translate:"ms.soul.desc",fallback:"收集碎片，于月下复活自己",color:"white"}]
execute if score $1_process tick.general matches 980 run bossbar set midsoul:2 visible true
execute if score $1_process tick.general matches 980 run bossbar set midsoul:2 players @a[team=soul]
execute if score $1_process tick.general matches 980 run bossbar set midsoul:3 color red
execute if score $1_process tick.general matches 980 run bossbar set midsoul:3 style notched_10
execute if score $1_process tick.general matches 980 run bossbar set midsoul:3 value 1010000
execute if score $1_process tick.general matches 980 run bossbar set midsoul:3 name [{text:"⚕ ",color:"red"},{translate:"ms.guardian",fallback:"灵魂守卫者"}," ⚕ ",{translate:"ms.guardian.desc",fallback:"阻止灵魂，让他们永困于此",color:"white"}]
execute if score $1_process tick.general matches 980 run bossbar set midsoul:3 visible true
execute if score $1_process tick.general matches 980 run bossbar set midsoul:3 players @a[team=guardian]

# 979 >> 976 | 阵营分配闪烁特效
execute if score $1_process tick.general matches 979 run bossbar set midsoul:2 visible false
execute if score $1_process tick.general matches 978 run bossbar set midsoul:2 visible true
execute if score $1_process tick.general matches 977 run bossbar set midsoul:2 visible false
execute if score $1_process tick.general matches 976 run bossbar set midsoul:2 visible true
execute if score $1_process tick.general matches 979 run bossbar set midsoul:3 visible false
execute if score $1_process tick.general matches 978 run bossbar set midsoul:3 visible true
execute if score $1_process tick.general matches 977 run bossbar set midsoul:3 visible false
execute if score $1_process tick.general matches 976 run bossbar set midsoul:3 visible true

# 960 | 重设能力组
execute if score $1_process tick.general matches 960 run scoreboard players set @a[tag=game_player] skill 0
execute if score $1_process tick.general matches 960 run scoreboard players set @a[tag=game_player] talent_1 0
execute if score $1_process tick.general matches 960 run scoreboard players set @a[tag=game_player] talent_2 0

# 961 >> 960 | 若有能力选择，进行过渡闪烁
execute if score $1_process tick.general matches 961 unless score $ability_assign setting matches 0 run bossbar set midsoul:2 name ""
execute if score $1_process tick.general matches 960 unless score $ability_assign setting matches 0 run bossbar set midsoul:2 name [{text:"⚕ ",color:"#52E5E7"},{translate:"ms.soul",fallback:"灵魂"}," ⚕ ",{translate:"ms.soul.desc",fallback:"收集碎片，于月下复活自己",color:"white"}]
execute if score $1_process tick.general matches 961 unless score $ability_assign setting matches 0 run bossbar set midsoul:3 name ""
execute if score $1_process tick.general matches 960 unless score $ability_assign setting matches 0 run bossbar set midsoul:3 name [{text:"⚕ ",color:"red"},{translate:"ms.guardian",fallback:"灵魂守卫者"}," ⚕ ",{translate:"ms.guardian.desc",fallback:"阻止灵魂，让他们永困于此",color:"white"}]

# 959 | 能力选择 跳过判定
execute if score $1_process tick.general matches 959 run scoreboard players set $ability temp 4
execute if score $1_process tick.general matches 959 unless score $ability_assign setting matches 5 run scoreboard players set $ability temp 3
execute if score $1_process tick.general matches 959 unless score $ability_assign setting matches 3..5 run scoreboard players set $ability temp 2
execute if score $1_process tick.general matches 959 unless score $ability_assign setting matches 1..5 run scoreboard players set $ability temp 0
execute if score $1_process tick.general matches 959 if score $ability temp matches 0 run scoreboard players set $1_process tick.general 159

# 959 | 能力选择 开始
execute if score $1_process tick.general matches 959 run scoreboard players set $1_single tick.general 200
execute if score $1_process tick.general matches 959 run scoreboard players operation $1_single tick.general *= $ability temp
execute if score $1_process tick.general matches 959 run scoreboard players operation $1_max tick.general = $1_single tick.general
execute if score $1_process tick.general matches 959 store result bossbar midsoul:2 max run scoreboard players get $1_single tick.general
execute if score $1_process tick.general matches 959 store result bossbar midsoul:3 max run scoreboard players get $1_single tick.general
execute if score $1_process tick.general matches 959 if score $ability_assign setting matches 1 run data merge storage ms:ability {0:true,1:false,2:false}
execute if score $1_process tick.general matches 959 if score $ability_assign setting matches 2 run data merge storage ms:ability {0:false,1:true,2:false}
execute if score $1_process tick.general matches 959 if score $ability_assign setting matches 3 run data merge storage ms:ability {0:false,1:true,2:true}
execute if score $1_process tick.general matches 959 if score $ability_assign setting matches 4 run data merge storage ms:ability {0:true,1:true,2:false}
execute if score $1_process tick.general matches 959 if score $ability_assign setting matches 5 run data merge storage ms:ability {0:true,1:true,2:true}
execute if score $1_process tick.general matches 959 as @a[team=soul] run function main:state/1/ability/panel_s
execute if score $1_process tick.general matches 959 as @a[team=guardian] run function main:state/1/ability/panel_g
execute if score $1_process tick.general matches 959 run playsound music_disc.5 music @a[tag=game_player] 0 1000000 0 100000
execute if score $1_process tick.general matches 959 if score $ability temp matches 3 run scoreboard players set $1_process tick.general 759
execute if score $1_process tick.general matches 959 if score $ability temp matches 2 run scoreboard players set $1_process tick.general 559

# 959 >> 160 | 能力选择 中途
execute if score $1_process tick.general matches 160..959 as @a[scores={detect.interact=5100..5401},tag=!check_ability,tag=game_player] run function main:state/1/ability/selecting
execute if score $1_process tick.general matches 160..959 run function main:state/1/bossbar/ability
execute if score $1_process tick.general matches 260 run playsound block.note_block.bit player @a[tag=game_player] 0 1000000 0 120000 1
execute if score $1_process tick.general matches 240 run playsound block.note_block.bit player @a[tag=game_player] 0 1000000 0 120000 1
execute if score $1_process tick.general matches 220 run playsound block.note_block.bit player @a[tag=game_player] 0 1000000 0 120000 1
execute if score $1_process tick.general matches 200 run playsound block.note_block.bit player @a[tag=game_player] 0 1000000 0 120000 1
execute if score $1_process tick.general matches 180 run playsound block.note_block.bit player @a[tag=game_player] 0 1000000 0 120000 1
execute if score $1_process tick.general matches 160 run playsound block.note_block.bit player @a[tag=game_player] 0 1000000 0 120000 2

# 160 | 能力选择 结束
execute if score $1_process tick.general matches 160 run scoreboard players operation $1_tick tick.general -= $1_single tick.general

# 159 | 重设 Bossbar
execute if score $1_process tick.general matches 159 run bossbar set midsoul:2 value 1010000
execute if score $1_process tick.general matches 159 run bossbar set midsoul:3 value 1010000

# 159 >> 158 | 若有能力选择，进行过渡闪烁
execute if score $1_process tick.general matches 159 unless score $ability_assign setting matches 0 run bossbar set midsoul:2 name ""
execute if score $1_process tick.general matches 158 unless score $ability_assign setting matches 0 run bossbar set midsoul:2 name [{text:"⚕ ",color:"#52E5E7"},{translate:"ms.soul",fallback:"灵魂"}," ⚕ ",{translate:"ms.soul.desc",fallback:"收集碎片，于月下复活自己",color:"white"}]
execute if score $1_process tick.general matches 159 unless score $ability_assign setting matches 0 run bossbar set midsoul:3 name ""
execute if score $1_process tick.general matches 158 unless score $ability_assign setting matches 0 run bossbar set midsoul:3 name [{text:"⚕ ",color:"red"},{translate:"ms.guardian",fallback:"灵魂守卫者"}," ⚕ ",{translate:"ms.guardian.desc",fallback:"阻止灵魂，让他们永困于此",color:"white"}]

# 159 | 进行技能随机
execute if score $1_process tick.general matches 159 as @a[tag=game_player] run function main:state/1/ability/random

# 150 >> 110 | 展示最终技能组
execute if score $1_process tick.general matches 150 as @a[team=soul] run function main:lib/ability/skill/soul
execute if score $1_process tick.general matches 150 as @a[team=guardian] run function main:lib/ability/skill/guar
execute if score $1_process tick.general matches 150 run playsound block.dispenser.fail ambient @a[tag=game_player] 0 1000000 0 120000
execute if score $1_process tick.general matches 130 as @a[team=soul] run function main:lib/ability/talent/soul {num:"1"}
execute if score $1_process tick.general matches 130 as @a[team=guardian] run function main:lib/ability/talent/guar {num:"1"}
execute if score $1_process tick.general matches 130 run playsound block.dispenser.fail ambient @a[tag=game_player] 0 1000000 0 120000
execute if score $1_process tick.general matches 110 as @a[team=soul] run function main:lib/ability/talent/soul {num:"2"}
execute if score $1_process tick.general matches 110 as @a[team=guardian] run function main:lib/ability/talent/guar {num:"2"}
execute if score $1_process tick.general matches 110 run playsound block.dispenser.fail ambient @a[tag=game_player] 0 1000000 0 120000

# 60 | Tip!
execute if score $1_process tick.general matches 60 run function main:lib/tip/general

# 40 | 预载地图
execute if score $1_process tick.general matches 40 run forceload remove all
execute if score $1_process tick.general matches 40 run forceload add -16 -16 16 16
execute if score $1_process tick.general matches 40 run function debug:sub/game/add_forceload/general

# 3 >> 0 | 最终的火花闪烁
execute if score $1_process tick.general matches 3 run bossbar set midsoul:2 name ""
execute if score $1_process tick.general matches 2 run bossbar set midsoul:2 name [{text:"⚕ ",color:"#52E5E7"},{translate:"ms.soul",fallback:"灵魂"}," ⚕ ",{translate:"ms.soul.desc",fallback:"收集碎片，于月下复活自己",color:"white"}]
execute if score $1_process tick.general matches 1 run bossbar set midsoul:2 name ""
execute if score $1_process tick.general matches 0 run bossbar set midsoul:2 name [{text:"⚕ ",color:"#52E5E7"},{translate:"ms.soul",fallback:"灵魂"}," ⚕ ",{translate:"ms.soul.desc",fallback:"收集碎片，于月下复活自己",color:"white"}]
execute if score $1_process tick.general matches 3 run bossbar set midsoul:3 name ""
execute if score $1_process tick.general matches 2 run bossbar set midsoul:3 name [{text:"⚕ ",color:"red"},{translate:"ms.guardian",fallback:"灵魂守卫者"}," ⚕ ",{translate:"ms.guardian.desc",fallback:"阻止灵魂，让他们永困于此",color:"white"}]
execute if score $1_process tick.general matches 1 run bossbar set midsoul:3 name ""
execute if score $1_process tick.general matches 0 run bossbar set midsoul:3 name [{text:"⚕ ",color:"red"},{translate:"ms.guardian",fallback:"灵魂守卫者"}," ⚕ ",{translate:"ms.guardian.desc",fallback:"阻止灵魂，让他们永困于此",color:"white"}]

# 0 | 进入入场阶段
execute if score $1_process tick.general matches 0 run function main:state/2/enter