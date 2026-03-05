## 改动侦测
# 个人设置
execute as @s[nbt=!{Inventory:[{Slot:20b}]}] run function main:lib/event/personal_setting {setting:"instant_rating",limit:"2"}
execute as @s[nbt=!{Inventory:[{Slot:21b}]}] run function main:lib/event/personal_setting {setting:"interact_hint",limit:"2"}
execute as @s[nbt=!{Inventory:[{Slot:22b}]}] run function main:lib/event/personal_setting {setting:"ability_status",limit:"3"}
execute as @s[nbt=!{Inventory:[{Slot:23b}]}] run function main:lib/event/personal_setting {setting:"ingame_tip",limit:"2"}
execute as @s[nbt=!{Inventory:[{Slot:24b}]}] run function main:lib/event/personal_setting {setting:"echo_info",limit:"2"}

# 头饰
clear @s[scores={extra.headset=1},tag=!invisible,nbt=!{equipment:{head:{}}}] end_rod[custom_data={id:75101}]
clear @s[scores={extra.headset=2},tag=!invisible,nbt=!{equipment:{head:{}}}] lightning_rod[custom_data={id:75102}]
clear @s[scores={extra.headset=3},tag=!invisible,nbt=!{equipment:{head:{}}}] small_amethyst_bud[custom_data={id:75103}]
clear @s[scores={extra.headset=4},tag=!invisible,nbt=!{equipment:{head:{}}}] cod[custom_data={id:75104}]
clear @s[scores={extra.headset=5},tag=!invisible,nbt=!{equipment:{head:{}}}] big_dripleaf[custom_data={id:75105}]
execute unless score @s extra.headset matches 1..5 run item replace entity @s armor.head with air
execute if entity @s[scores={extra.headset=1..5},tag=invisible] run item replace entity @s armor.head with air
item replace entity @s[scores={extra.headset=1},tag=!invisible] armor.head with end_rod[custom_data={id:75101},tooltip_display={hide_tooltip:true}]
item replace entity @s[scores={extra.headset=2},tag=!invisible] armor.head with lightning_rod[custom_data={id:75102},tooltip_display={hide_tooltip:true}]
item replace entity @s[scores={extra.headset=3},tag=!invisible] armor.head with small_amethyst_bud[custom_data={id:75103},tooltip_display={hide_tooltip:true}]
item replace entity @s[scores={extra.headset=4},tag=!invisible] armor.head with cod[custom_data={id:75104},tooltip_display={hide_tooltip:true}]
item replace entity @s[scores={extra.headset=5},tag=!invisible] armor.head with big_dripleaf[custom_data={id:75105},tooltip_display={hide_tooltip:true}]

## 物品调整
item replace block 0 -7 0 container.11 with firework_star
item replace block 0 -7 0 container.12 with firework_star
item replace block 0 -7 0 container.13 with firework_star
item replace block 0 -7 0 container.14 with firework_star
item replace block 0 -7 0 container.15 with firework_star