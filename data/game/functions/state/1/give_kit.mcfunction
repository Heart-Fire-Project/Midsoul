# 循环核心
execute unless score $kit_anime temp matches 1..200 run scoreboard players set $kit_anime temp 0
execute if score $kit_anime temp matches 0..200 run scoreboard players add $kit_anime temp 1
execute if score $kit_anime temp matches 201.. run scoreboard players reset $kit_anime temp
execute if score $kit_anime temp matches 1..200 run schedule function game:state/1/give_kit 1t replace

# 角色分配 (80t)
execute if score $kit_anime temp matches 80 run team join alive @a[scores={player_id=2..}]
execute if score $kit_anime temp matches 80 run team join protect @a[scores={player_id=1}]

# 主标题显示 (1t)
execute if score $kit_anime temp matches 1 run title @a[team=!admin] title {"text": "午夜 🔯 灵魂","color": "#BC78EC"}

# 身份主标题 (23t)
execute if score $kit_anime temp matches 22 run title @a times 3 90 2
execute if score $kit_anime temp matches 22 run title @a subtitle ""
execute if score $kit_anime temp matches 23 run title @a[team=prepare] title "你的身份是"

# 身份副标题 (40t / 60t)
execute if score $kit_anime temp matches 40 run title @a[team=prepare] subtitle "灵"
execute if score $kit_anime temp matches 60 run title @a[team=prepare] subtitle "灵魂"

# 身份确认 (80t-90t)
execute if score $kit_anime temp matches 80 run title @a[team=alive] subtitle {"text": "⚕ 灵魂 ⚕","color": "#52E5E7"}
execute if score $kit_anime temp matches 80 run title @a[team=protect] subtitle {"text": "灵魂守","color": "#FFD5D5"}
execute if score $kit_anime temp matches 82 run title @a[team=protect] subtitle {"text": "灵魂守护","color": "#FFAAAA"}
execute if score $kit_anime temp matches 84 run title @a[team=protect] subtitle {"text": "灵魂守护者","color": "#FF8080"}
execute if score $kit_anime temp matches 86 run title @a[team=protect] subtitle {"text": "⚕ 灵魂守护者 ⚕","color": "red"}

# 身份说明 (120t)
execute if score $kit_anime temp matches 120 run title @a times 3 70 2
execute if score $kit_anime temp matches 120 run title @a subtitle ""
execute if score $kit_anime temp matches 120 run title @a[team=alive] title {"text": "⚕ 灵魂 ⚕","color": "#52E5E7"}
execute if score $kit_anime temp matches 120 run title @a[team=protect] title {"text": "⚕ 灵魂守护者 ⚕","color": "red"}
execute if score $kit_anime temp matches 135 run title @a[team=alive] subtitle "收集碎片, 于月下复活自己"
execute if score $kit_anime temp matches 135 run title @a[team=protect] subtitle "阻止灵魂, 让他们终困于此"

# 进行技能与天赋的发放 (140t)
execute if score $kit_anime temp matches 140 run function game:state/1/give_talent

# 音效
execute if score $kit_anime temp matches 1 run playsound block.beacon.activate ambient @a[team=!admin] 0 1000000 0 1000000
execute if score $kit_anime temp matches 40 run playsound block.stone_button.click_on ambient @a[team=prepare] 0 1000000 0 1000000
execute if score $kit_anime temp matches 60 run playsound block.stone_button.click_on ambient @a[team=prepare] 0 1000000 0 1000000

execute if score $kit_anime temp matches 80 run playsound ambient.basalt_deltas.mood ambient @a[team=alive] 0 1000000 0 1000000
execute if score $kit_anime temp matches 80 run playsound block.stone_button.click_on ambient @a[team=protect] 0 1000000 0 1000000
execute if score $kit_anime temp matches 82 run playsound block.stone_button.click_on ambient @a[team=protect] 0 1000000 0 1000000
execute if score $kit_anime temp matches 84 run playsound block.stone_button.click_on ambient @a[team=protect] 0 1000000 0 1000000
execute if score $kit_anime temp matches 86 run playsound block.end_portal.spawn ambient @a[team=protect] 0 1000000 0 1000000