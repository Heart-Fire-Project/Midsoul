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

# 改动侦测
execute as @s[scores={extra.headset=1},tag=!invisible,nbt=!{equipment:{head:{}}}] run clear @s end_rod[custom_data={id:75101}]
execute as @s[scores={extra.headset=2},tag=!invisible,nbt=!{equipment:{head:{}}}] run clear @s lightning_rod[custom_data={id:75102}]
execute as @s[scores={extra.headset=3},tag=!invisible,nbt=!{equipment:{head:{}}}] run clear @s small_amethyst_bud[custom_data={id:75103}]
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

# 刷新设置物品
item replace block 0 -7 0 container.11 with firework_star
item replace block 0 -7 0 container.12 with firework_star
item replace block 0 -7 0 container.13 with firework_star
item replace block 0 -7 0 container.14 with firework_star
item replace block 0 -7 0 container.15 with firework_star

# 守卫者武器
execute if entity @s[team=guardian] run item replace block 0 -7 0 container.1 with stick
$execute if entity @s[team=guardian,scores={state=0}] run item modify block 0 -7 0 container.1 main:weapon/$(weapon)a
$execute if entity @s[team=guardian,scores={state=0,tick.enhance=1..}] run item modify block 0 -7 0 container.1 main:weapon/$(weapon)b
$execute if entity @s[team=guardian,scores={state=1}] run item modify block 0 -7 0 container.1 main:weapon/$(weapon)c
$execute if entity @s[team=guardian,scores={tick.disable=1..}] run item modify block 0 -7 0 container.1 main:weapon/$(weapon)c
$execute if entity @s[team=guardian,scores={skill=5},tag=skill_on] run item modify block 0 -7 0 container.1 main:weapon/$(weapon)c
execute if entity @s[team=guardian,scores={state=1}] run item modify block 0 -7 0 container.1 {function:"set_components",components:{item_model:"barrier"}}
$execute if score @s tick.disable matches 1.. run item modify block 0 -7 0 container.1 {function:"set_components",components:{damage:$(disable),max_damage:$(disable_max)}}

# 灵魂宝物
execute if entity @s[team=soul] run item replace block 0 -7 0 container.1 with firework_star
execute if entity @s[team=soul,scores={item=6,state=0}] run item replace block 0 -7 0 container.1 with crossbow
$execute if entity @s[team=soul] run item modify block 0 -7 0 container.1 main:item/$(item)
execute if entity @s[team=soul,scores={state=1}] run item modify block 0 -7 0 container.1 {function:"set_components",components:{item_model:"barrier"}}

# 技能物品
item replace block 0 -7 0 container.4 with firework_star
$execute if entity @s[team=soul] run item modify block 0 -7 0 container.4 main:skill/0$(skill)
$execute if entity @s[team=guardian] run item modify block 0 -7 0 container.4 main:skill/1$(skill)
$execute if entity @s[team=soul,scores={skill=4}] run item modify block 0 -7 0 container.4 {function:"set_count",count:$(S004)}
execute if entity @s[scores={state=0,tick.skill=1..}] run item modify block 0 -7 0 container.4 {function:"set_components",components:{item_model:"firework_star"}}
execute if entity @s[scores={state=1}] run item modify block 0 -7 0 container.4 {function:"set_components",components:{item_model:"barrier"}}

# 一天赋物品
item replace block 0 -7 0 container.7 with firework_star
$execute if entity @s[team=soul] run item modify block 0 -7 0 container.7 main:talent/0$(talent_1)
$execute if entity @s[team=guardian] run item modify block 0 -7 0 container.7 main:talent/1$(talent_1)
item modify block 0 -7 0 container.7 {function:set_components,components:{max_stack_size:99}}
$execute if entity @s[team=soul,scores={talent_1=7}] run item modify block 0 -7 0 container.7 {function:"set_count",count:$(T007)}
$execute if entity @s[team=guardian,scores={talent_1=7}] run item modify block 0 -7 0 container.7 {function:"set_count",count:$(T107)}
execute if entity @s[team=soul,scores={talent_1=2,tick.talent_1=1..}] run item modify block 0 -7 0 container.7 {function:"set_components",components:{item_model:"firework_star"}}
execute if entity @s[team=soul,scores={talent_1=4},tag=!T004] run item modify block 0 -7 0 container.7 {function:"set_components",components:{item_model:"firework_star"}}
execute if entity @s[team=guardian,scores={talent_1=7,talent.107=0}] run item modify block 0 -7 0 container.7 {function:"set_components",components:{item_model:"firework_star"}}
$execute if entity @s[team=soul,scores={talent_1=1}] run item modify block 0 -7 0 container.7 {function:set_count,count:$(tick_talent_1)}
$execute if entity @s[team=soul,scores={talent_1=2}] run item modify block 0 -7 0 container.7 {function:set_count,count:$(tick_talent_1)}
$execute if entity @s[team=soul,scores={talent_1=4}] run item modify block 0 -7 0 container.7 {function:set_count,count:$(T004)}
$execute if entity @s[team=guardian,scores={talent_1=4}] run item modify block 0 -7 0 container.7 {function:set_count,count:$(tick_talent_1)}
$execute if entity @s[team=guardian,scores={talent_1=5}] run item modify block 0 -7 0 container.7 {function:set_count,count:$(tick_talent_1)}
$execute if entity @s[team=guardian,scores={talent_1=7,talent.107=0}] run item modify block 0 -7 0 container.7 {function:set_count,count:$(tick_talent_1)}

# 二天赋物品
item replace block 0 -7 0 container.8 with firework_star
$execute if entity @s[team=soul] run item modify block 0 -7 0 container.8 main:talent/0$(talent_2)
$execute if entity @s[team=guardian] run item modify block 0 -7 0 container.8 main:talent/1$(talent_2)
item modify block 0 -7 0 container.8 {function:set_components,components:{max_stack_size:99}}
$execute if entity @s[team=soul,scores={talent_2=7}] run item modify block 0 -7 0 container.8 {function:"set_count",count:$(T007)}
$execute if entity @s[team=guardian,scores={talent_2=7}] run item modify block 0 -7 0 container.8 {function:"set_count",count:$(T107)}
execute if entity @s[team=soul,scores={talent_2=2,tick.talent_2=1..}] run item modify block 0 -7 0 container.8 {function:"set_components",components:{item_model:"firework_star"}}
execute if entity @s[team=soul,scores={talent_2=4},tag=!T004] run item modify block 0 -7 0 container.8 {function:"set_components",components:{item_model:"firework_star"}}
execute if entity @s[team=guardian,scores={talent_2=7,talent.107=0}] run item modify block 0 -7 0 container.8 {function:"set_components",components:{item_model:"firework_star"}}
$execute if entity @s[team=soul,scores={talent_2=1}] run item modify block 0 -7 0 container.8 {function:set_count,count:$(tick_talent_2)}
$execute if entity @s[team=soul,scores={talent_2=2}] run item modify block 0 -7 0 container.8 {function:set_count,count:$(tick_talent_2)}
$execute if entity @s[team=soul,scores={talent_2=4}] run item modify block 0 -7 0 container.8 {function:set_count,count:$(T004)}
$execute if entity @s[team=guardian,scores={talent_2=4}] run item modify block 0 -7 0 container.8 {function:set_count,count:$(tick_talent_2)}
$execute if entity @s[team=guardian,scores={talent_2=5}] run item modify block 0 -7 0 container.8 {function:set_count,count:$(tick_talent_2)}
$execute if entity @s[team=guardian,scores={talent_2=7,talent.107=0}] run item modify block 0 -7 0 container.8 {function:set_count,count:$(tick_talent_2)}

# 基础光效处理
execute if entity @s[tag=skill_on] run item modify block 0 -7 0 container.4 {function:"set_components",components:{enchantment_glint_override:true}}
execute if entity @s[tag=talent_1_on] run item modify block 0 -7 0 container.7 {function:"set_components",components:{enchantment_glint_override:true}}
execute if entity @s[tag=talent_2_on] run item modify block 0 -7 0 container.8 {function:"set_components",components:{enchantment_glint_override:true}}
execute if entity @s[team=soul,tag=item_on] run item modify block 0 -7 0 container.1 {function:"set_components",components:{enchantment_glint_override:true}}

# 特殊光效处理
execute if entity @s[team=soul,scores={talent_1=4},tag=T004_s] run item modify block 0 -7 0 container.7 {function:"set_components",components:{enchantment_glint_override:true}}
execute if entity @s[team=soul,scores={talent_2=4},tag=T004_s] run item modify block 0 -7 0 container.8 {function:"set_components",components:{enchantment_glint_override:true}}

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