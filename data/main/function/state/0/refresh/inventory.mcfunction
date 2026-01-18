# 未使用空间
item replace entity @s inventory.0 with air
item replace entity @s inventory.1 with air
item replace entity @s inventory.2 with air
item replace entity @s inventory.3 with air
item replace entity @s inventory.4 with air
item replace entity @s inventory.5 with air
item replace entity @s inventory.6 with air
item replace entity @s inventory.7 with air
item replace entity @s inventory.8 with air
item replace entity @s inventory.9 with air
item replace entity @s inventory.10 with air
item replace entity @s inventory.16 with air
item replace entity @s inventory.17 with air
item replace entity @s inventory.18 with air
item replace entity @s inventory.19 with air
item replace entity @s inventory.20 with air
item replace entity @s inventory.21 with air
item replace entity @s inventory.22 with air
item replace entity @s inventory.23 with air
item replace entity @s inventory.24 with air
item replace entity @s inventory.25 with air
item replace entity @s inventory.26 with air
item replace entity @s hotbar.0 with air
item replace entity @s hotbar.1 with air
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.4 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

# 改动侦测
execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{id:70000}}}}}] run function main:lib/event/prepare
execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{id:70001}}}}}] run function main:lib/event/spectator
clear @s[nbt=!{Inventory:[{Slot:8b}]}] closed_eyeblossom[custom_data={id:70000}]
clear @s[nbt=!{Inventory:[{Slot:8b}]}] open_eyeblossom[custom_data={id:70001}]
clear @s[scores={extra.headset=1},tag=!invisible,nbt=!{equipment:{head:{}}}] end_rod[custom_data={id:75101}]
clear @s[scores={extra.headset=2},tag=!invisible,nbt=!{equipment:{head:{}}}] lightning_rod[custom_data={id:75102}]
clear @s[scores={extra.headset=3},tag=!invisible,nbt=!{equipment:{head:{}}}] small_amethyst_bud[custom_data={id:75103}]
execute as @s[nbt=!{Inventory:[{Slot:20b}]}] run function main:lib/event/personal_setting {setting:"instant_rating",limit:"2"}
execute as @s[nbt=!{Inventory:[{Slot:21b}]}] run function main:lib/event/personal_setting {setting:"interact_hint",limit:"2"}
execute as @s[nbt=!{Inventory:[{Slot:22b}]}] run function main:lib/event/personal_setting {setting:"ability_status",limit:"3"}
execute as @s[nbt=!{Inventory:[{Slot:23b}]}] run function main:lib/event/personal_setting {setting:"ingame_tip",limit:"2"}
execute as @s[nbt=!{Inventory:[{Slot:24b}]}] run function main:lib/event/personal_setting {setting:"echo_info",limit:"2"}

# 头饰
execute unless score @s extra.headset matches 1..3 run item replace entity @s armor.head with air
execute if entity @s[scores={extra.headset=1..3},tag=invisible] run item replace entity @s armor.head with air
item replace entity @s[scores={extra.headset=1},tag=!invisible] armor.head with end_rod[custom_data={id:75101},tooltip_display={hide_tooltip:true}]
item replace entity @s[scores={extra.headset=2},tag=!invisible] armor.head with lightning_rod[custom_data={id:75102},tooltip_display={hide_tooltip:true}]
item replace entity @s[scores={extra.headset=3},tag=!invisible] armor.head with small_amethyst_bud[custom_data={id:75103},tooltip_display={hide_tooltip:true}]

# 刷新物品
item replace entity @s[team=spectator] hotbar.8 with closed_eyeblossom[item_name={translate:"ms.lobby.spectator",fallback:"未准备 - 按 [%s] 准备",italic:false,color:"gray",with:[{keybind:"key.swapOffhand"}]},custom_data={id:70000}]
item replace entity @s[team=prepare] hotbar.8 with open_eyeblossom[item_name={translate:"ms.lobby.prepare",fallback:"已准备 - 按 [%s] 取消",italic:false,color:"#FC9341",with:[{keybind:"key.swapOffhand"}]},custom_data={id:70001}]
item replace block 0 -7 0 container.11 with firework_star
item replace block 0 -7 0 container.12 with firework_star
item replace block 0 -7 0 container.13 with firework_star
item replace block 0 -7 0 container.14 with firework_star
item replace block 0 -7 0 container.15 with firework_star
execute if score @s setting.instant_rating matches 0 run item replace entity @s inventory.11 from block 0 -7 0 container.11 main:setting/instant_rating.0
execute if score @s setting.instant_rating matches 1 run item replace entity @s inventory.11 from block 0 -7 0 container.11 main:setting/instant_rating.1
execute if score @s setting.interact_hint matches 0 run item replace entity @s inventory.12 from block 0 -7 0 container.12 main:setting/interact_hint.0
execute if score @s setting.interact_hint matches 1 run item replace entity @s inventory.12 from block 0 -7 0 container.12 main:setting/interact_hint.1
execute if score @s setting.ability_status matches 0 run item replace entity @s inventory.13 from block 0 -7 0 container.13 main:setting/ability_status.0
execute if score @s setting.ability_status matches 1 run item replace entity @s inventory.13 from block 0 -7 0 container.13 main:setting/ability_status.1
execute if score @s setting.ability_status matches 2 run item replace entity @s inventory.13 from block 0 -7 0 container.13 main:setting/ability_status.2
execute if score @s setting.ingame_tip matches 0 run item replace entity @s inventory.14 from block 0 -7 0 container.14 main:setting/ingame_tip.0
execute if score @s setting.ingame_tip matches 1 run item replace entity @s inventory.14 from block 0 -7 0 container.14 main:setting/ingame_tip.1
execute if score @s setting.echo_info matches 0 run item replace entity @s inventory.15 from block 0 -7 0 container.15 main:setting/echo_info.0
execute if score @s setting.echo_info matches 1 run item replace entity @s inventory.15 from block 0 -7 0 container.15 main:setting/echo_info.1

item replace entity @s weapon.offhand with air