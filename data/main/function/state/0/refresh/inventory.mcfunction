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

# 通用改动
function main:lib/event/universal/inventory_other

# 准备/旁观侦测
execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{id:70000}}}}}] run function main:lib/event/prepare
execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{id:70001}}}}}] run function main:lib/event/spectator
clear @s[nbt=!{Inventory:[{Slot:8b}]}] closed_eyeblossom[custom_data={id:70000}]
clear @s[nbt=!{Inventory:[{Slot:8b}]}] open_eyeblossom[custom_data={id:70001}]

# 刷新物品
item replace entity @s[team=spectator] hotbar.8 with closed_eyeblossom[item_name={translate:"ms.lobby.spectator",fallback:"未准备 - 按 [%s] 准备",italic:false,color:"gray",with:[{keybind:"key.swapOffhand"}]},custom_data={id:70000}]
item replace entity @s[team=prepare] hotbar.8 with open_eyeblossom[item_name={translate:"ms.lobby.prepare",fallback:"已准备 - 按 [%s] 取消",italic:false,color:"#FC9341",with:[{keybind:"key.swapOffhand"}]},custom_data={id:70001}]
function main:lib/event/universal/inventory_setting

item replace entity @s weapon.offhand with air