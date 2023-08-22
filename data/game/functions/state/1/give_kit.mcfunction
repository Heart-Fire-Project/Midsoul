# 循环核心
execute unless score $kit_anime temp matches 1..200 run scoreboard players set $kit_anime temp 0
execute if score $kit_anime temp matches 0..200 run scoreboard players add $kit_anime temp 1
execute if score $kit_anime temp matches 201.. run scoreboard players reset $kit_anime temp
execute if score $kit_anime temp matches 1..200 run schedule function game:state/1/give_kit 1t replace

# 角色分配 (80t)
execute if score $kit_anime temp matches 80 run team join protect @a[scores={player_id=1}]
execute if score $kit_anime temp matches 80 run team join alive @a[scores={player_id=2..6}]
execute if score $kit_anime temp matches 80 run team join protect @a[scores={player_id=7}]
execute if score $kit_anime temp matches 80 run team join alive @a[scores={player_id=8..13}]
execute if score $kit_anime temp matches 80 run team join protect @a[scores={player_id=14}]
execute if score $kit_anime temp matches 80 run team join alive @a[scores={player_id=15..}]

# 主标题显示 (1t)
execute if score $kit_anime temp matches 1 run title @a[team=!admin] title {"translate":"ms.title","fallback":"午夜 🔯 灵魂","color": "#BC78EC"}

# 身份主标题 (23t)
execute if score $kit_anime temp matches 22 run title @a times 3 90 2
execute if score $kit_anime temp matches 22 run title @a subtitle ""
execute if score $kit_anime temp matches 23 run title @a[team=prepare] title {"translate":"ms.title.kit","fallback":"你的身份是"}

# 身份副标题 (40t / 60t)
execute if score $kit_anime temp matches 40 run title @a[team=prepare] subtitle {"translate":"ms.title.kit.anime.1","fallback":"灵"}
execute if score $kit_anime temp matches 45 run title @a[team=prepare] subtitle {"translate":"ms.title.kit.anime.2","fallback":"灵"}
execute if score $kit_anime temp matches 50 run title @a[team=prepare] subtitle {"translate":"ms.title.kit.anime.3","fallback":"灵魂"}
execute if score $kit_anime temp matches 60 run title @a[team=prepare] subtitle {"translate":"ms.title.kit.anime.4","fallback":"灵魂"}

# 身份确认 (80t-90t)
execute if score $kit_anime temp matches 80 run title @a[team=alive] subtitle {"translate":"ms.title.kit.alive","fallback": "⚕ 灵魂 ⚕","color": "#52E5E7"}
execute if score $kit_anime temp matches 80 run title @a[team=protect] subtitle {"translate":"ms.title.kit.anime.5","fallback": "灵魂守","color": "#FFD5D5"}
execute if score $kit_anime temp matches 82 run title @a[team=protect] subtitle {"translate":"ms.title.kit.anime.6","fallback": "灵魂守卫","color": "#FFAAAA"}
execute if score $kit_anime temp matches 84 run title @a[team=protect] subtitle {"translate":"ms.title.kit.anime.7","fallback": "灵魂守卫者","color": "#FF8080"}
execute if score $kit_anime temp matches 86 run title @a[team=protect] subtitle {"translate":"ms.title.kit.protect","fallback": "⚕ 灵魂守卫者 ⚕","color": "red"}

# 身份说明 (120t)
execute if score $kit_anime temp matches 120 run title @a times 3 70 2
execute if score $kit_anime temp matches 120 run title @a subtitle ""
execute if score $kit_anime temp matches 120 run title @a[team=alive] title {"translate":"ms.title.kit.alive","fallback": "⚕ 灵魂 ⚕","color": "#52E5E7"}
execute if score $kit_anime temp matches 120 run title @a[team=protect] title {"translate":"ms.title.kit.protect","fallback": "⚕ 灵魂守卫者 ⚕","color": "red"}
execute if score $kit_anime temp matches 135 run title @a[team=alive] subtitle {"translate":"ms.title.alive.goal","fallback": "收集碎片, 于月下复活自己"}
execute if score $kit_anime temp matches 135 run title @a[team=protect] subtitle {"translate":"ms.title.protect.goal","fallback": "阻止灵魂, 让他们终困于此"}

# 进行技能与天赋的发放 (140t)
execute if score $kit_anime temp matches 140 run function game:state/1/give_talent

# 音效
execute if score $kit_anime temp matches 1 run playsound block.beacon.activate ambient @a[team=!admin] 0 1000000 0 1000000
execute if score $kit_anime temp matches 40 run playsound block.dispenser.dispense ambient @a[team=prepare] 0 1000000 0 1000000
execute if score $kit_anime temp matches 60 run playsound block.dispenser.dispense ambient @a[team=prepare] 0 1000000 0 1000000

execute if score $kit_anime temp matches 80 run playsound ambient.basalt_deltas.mood ambient @a[team=alive] 0 1000000 0 1000000
execute if score $kit_anime temp matches 80 run playsound block.dispenser.dispense ambient @a[team=protect] 0 1000000 0 1000000
execute if score $kit_anime temp matches 82 run playsound block.dispenser.dispense ambient @a[team=protect] 0 1000000 0 1000000
execute if score $kit_anime temp matches 84 run playsound block.dispenser.dispense ambient @a[team=protect] 0 1000000 0 1000000
execute if score $kit_anime temp matches 86 run playsound block.respawn_anchor.set_spawn ambient @a[team=protect] 0 1000000 0 1000000