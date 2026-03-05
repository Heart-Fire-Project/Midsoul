# 背的不是包，是思想
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
item replace entity @s weapon.offhand with air
item replace entity @s hotbar.0 with air
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

# 通用改动
function main:lib/event/universal/inventory_other
function main:lib/event/universal/inventory_pre

# 进行完全部处理之后再发到玩家手里
item replace entity @s hotbar.1 from block 0 -7 0 container.1
item replace entity @s hotbar.4 from block 0 -7 0 container.4
item replace entity @s hotbar.7 from block 0 -7 0 container.7
item replace entity @s hotbar.8 from block 0 -7 0 container.8
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