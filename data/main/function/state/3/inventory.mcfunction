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

# 装备栏
execute unless score @s extra.headset matches 1..3 run item replace entity @s armor.head with air
execute if entity @s[scores={extra.headset=1..3},tag=invisibility] run item replace entity @s armor.head with air
item replace entity @s[scores={extra.headset=1},tag=!invisibility] armor.head with end_rod[hide_tooltip={}]
item replace entity @s[scores={extra.headset=2},tag=!invisibility] armor.head with lightning_rod[hide_tooltip={}]
item replace entity @s[scores={extra.headset=3},tag=!invisibility] armor.head with amethyst_cluster[hide_tooltip={}]
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

# 物品栏通用处理
item replace entity @s weapon.offhand with air
item replace entity @s hotbar.0 with air
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
execute if entity @s[scores={state=1}] run item replace block 0 -7 0 container.1 with barrier

# 守卫者武器
execute if entity @s[team=guardian] run item replace block 0 -7 0 container.1 with golden_sword
execute if entity @s[scores={extra.weapon=1},team=guardian] run item replace block 0 -7 0 container.1 with diamond_sword
execute if entity @s[scores={extra.weapon=2},team=guardian] run item replace block 0 -7 0 container.1 with netherite_sword
execute if entity @s[scores={extra.weapon=3},team=guardian] run item replace block 0 -7 0 container.1 with brick
execute if entity @s[scores={extra.weapon=4},team=guardian] run item replace block 0 -7 0 container.1 with blaze_rod
execute if entity @s[scores={skill=5},tag=skill_on,team=guardian] run item replace block 0 -7 0 container.1 with structure_void

# 灵魂宝物
execute if entity @s[scores={item=0},team=soul] run item replace block 0 -7 0 container.1 with structure_void
execute if entity @s[scores={item=1},team=soul] run item replace block 0 -7 0 container.1 with iron_chestplate
execute if entity @s[scores={item=2},team=soul] run item replace block 0 -7 0 container.1 with prismarine_shard
execute if entity @s[scores={item=3},team=soul] run item replace block 0 -7 0 container.1 with clock
execute if entity @s[scores={item=4},team=soul] run item replace block 0 -7 0 container.1 with shaper_armor_trim_smithing_template
execute if entity @s[scores={item=5},team=soul] run item replace block 0 -7 0 container.1 with player_head
execute if entity @s[scores={item=6},team=soul] run item replace block 0 -7 0 container.1 with crossbow
execute if entity @s[scores={item=7},team=soul] run item replace block 0 -7 0 container.1 with tipped_arrow

# 技能物品
execute if entity @s[scores={skill=1},team=soul] run item replace block 0 -7 0 container.4 with phantom_membrane
execute if entity @s[scores={skill=2},team=soul] run item replace block 0 -7 0 container.4 with soul_lantern
execute if entity @s[scores={skill=3},team=soul] run item replace block 0 -7 0 container.4 with recovery_compass
$execute if entity @s[scores={skill=4},team=soul] run item replace block 0 -7 0 container.4 with dragon_breath $(S004)
execute if entity @s[scores={skill=5},team=soul] run item replace block 0 -7 0 container.4 with shulker_shell
execute if entity @s[scores={skill=1},team=guardian] run item replace block 0 -7 0 container.4 with spectral_arrow
$execute if entity @s[scores={skill=2},team=guardian] run item replace block 0 -7 0 container.4 with echo_shard $(S102)
execute if entity @s[scores={skill=3},team=guardian] run item replace block 0 -7 0 container.4 with compass
execute if entity @s[scores={skill=4},team=guardian] run item replace block 0 -7 0 container.4 with ominous_bottle
execute if entity @s[scores={skill=5},team=guardian] run item replace block 0 -7 0 container.4 with light_gray_dye
execute if entity @s[scores={state=0,tick.skill=1..}] run item replace block 0 -7 0 container.4 with firework_star
execute if entity @s[scores={state=1}] run item replace block 0 -7 0 container.4 with barrier

# 天赋物品 | 注意处理顺序
execute if entity @s[scores={talent_1=1},team=soul] run item replace block 0 -7 0 container.7 with glow_ink_sac
execute if entity @s[scores={talent_1=2},team=soul] run item replace block 0 -7 0 container.7 with blaze_powder
execute if entity @s[scores={talent_1=3},team=soul] run item replace block 0 -7 0 container.7 with magma_cream
execute if entity @s[scores={talent_1=4},team=soul] run item replace block 0 -7 0 container.7 with soul_torch
execute if entity @s[scores={talent_1=5},team=soul] run item replace block 0 -7 0 container.7 with feather
execute if entity @s[scores={talent_1=6},team=soul] run item replace block 0 -7 0 container.7 with echo_shard
$execute if entity @s[scores={talent_1=7},team=soul] run item replace block 0 -7 0 container.7 with cyan_dye $(T007)
execute if entity @s[scores={talent_1=1},team=guardian] run item replace block 0 -7 0 container.7 with crimson_fungus
execute if entity @s[scores={talent_1=2},team=guardian] run item replace block 0 -7 0 container.7 with red_dye
execute if entity @s[scores={talent_1=3},team=guardian] run item replace block 0 -7 0 container.7 with book
execute if entity @s[scores={talent_1=4},team=guardian] run item replace block 0 -7 0 container.7 with black_candle
execute if entity @s[scores={talent_1=5},team=guardian] run item replace block 0 -7 0 container.7 with recovery_compass
execute if entity @s[scores={talent_1=6},team=guardian] run item replace block 0 -7 0 container.7 with redstone
$execute if entity @s[scores={talent_1=7},team=guardian] run item replace block 0 -7 0 container.7 with amethyst_shard $(T107)
execute if entity @s[scores={talent_1=2,tick.talent_1=1..},team=soul] run item replace block 0 -7 0 container.7 with firework_star
execute if entity @s[scores={talent_1=4},team=soul,tag=!T004] run item replace block 0 -7 0 container.7 with firework_star
execute if entity @s[scores={talent_1=7,talent.107=0},team=guardian] run item replace block 0 -7 0 container.7 with firework_star
item modify block 0 -7 0 container.7 {function:set_components,components:{max_stack_size:99}}
$execute if entity @s[scores={talent_1=2},team=soul] run item modify block 0 -7 0 container.7 {function:set_count,count:$(tick_talent_1)}
$execute if entity @s[scores={talent_1=4},team=soul] run item modify block 0 -7 0 container.7 {function:set_count,count:$(T004)}
$execute if entity @s[scores={talent_1=4},team=guardian] run item modify block 0 -7 0 container.7 {function:set_count,count:$(tick_talent_1)}
$execute if entity @s[scores={talent_1=5},team=guardian] run item modify block 0 -7 0 container.7 {function:set_count,count:$(tick_talent_1)}
$execute if entity @s[scores={talent_1=7,talent.107=0},team=guardian] run item modify block 0 -7 0 container.7 {function:set_count,count:$(tick_talent_1)}
execute if entity @s[scores={talent_2=1},team=soul] run item replace block 0 -7 0 container.8 with glow_ink_sac
execute if entity @s[scores={talent_2=2},team=soul] run item replace block 0 -7 0 container.8 with blaze_powder
execute if entity @s[scores={talent_2=3},team=soul] run item replace block 0 -7 0 container.8 with magma_cream
execute if entity @s[scores={talent_2=4},team=soul] run item replace block 0 -7 0 container.8 with soul_torch
execute if entity @s[scores={talent_2=5},team=soul] run item replace block 0 -7 0 container.8 with feather
execute if entity @s[scores={talent_2=6},team=soul] run item replace block 0 -7 0 container.8 with echo_shard
$execute if entity @s[scores={talent_2=7},team=soul] run item replace block 0 -7 0 container.8 with cyan_dye $(T007)
execute if entity @s[scores={talent_2=1},team=guardian] run item replace block 0 -7 0 container.8 with crimson_fungus
execute if entity @s[scores={talent_2=2},team=guardian] run item replace block 0 -7 0 container.8 with red_dye
execute if entity @s[scores={talent_2=3},team=guardian] run item replace block 0 -7 0 container.8 with book
execute if entity @s[scores={talent_2=4},team=guardian] run item replace block 0 -7 0 container.8 with black_candle
execute if entity @s[scores={talent_2=5},team=guardian] run item replace block 0 -7 0 container.8 with recovery_compass
execute if entity @s[scores={talent_2=6},team=guardian] run item replace block 0 -7 0 container.8 with redstone
$execute if entity @s[scores={talent_2=7},team=guardian] run item replace block 0 -7 0 container.8 with amethyst_shard $(T107)
execute if entity @s[scores={talent_2=2,tick.talent_2=1..},team=soul] run item replace block 0 -7 0 container.8 with firework_star
execute if entity @s[scores={talent_2=4},team=soul,tag=!T004] run item replace block 0 -7 0 container.8 with firework_star
execute if entity @s[scores={talent_2=7,talent.107=0},team=guardian] run item replace block 0 -7 0 container.8 with firework_star
item modify block 0 -7 0 container.8 {function:set_components,components:{max_stack_size:99}}
$execute if entity @s[scores={talent_2=2},team=soul] run item modify block 0 -7 0 container.8 {function:set_count,count:$(tick_talent_2)}
$execute if entity @s[scores={talent_2=4},team=soul] run item modify block 0 -7 0 container.8 {function:set_count,count:$(T004)}
$execute if entity @s[scores={talent_2=4},team=guardian] run item modify block 0 -7 0 container.8 {function:set_count,count:$(tick_talent_2)}
$execute if entity @s[scores={talent_2=5},team=guardian] run item modify block 0 -7 0 container.8 {function:set_count,count:$(tick_talent_2)}
$execute if entity @s[scores={talent_2=7,talent.107=0},team=guardian] run item modify block 0 -7 0 container.8 {function:set_count,count:$(tick_talent_2)}

# 设置改动侦测
execute as @s[nbt=!{Inventory:[{Slot:20b}]}] run function main:lib/event/personal_setting {setting:"echo_info",limit:"2"}
execute as @s[nbt=!{Inventory:[{Slot:21b}]}] run function main:lib/event/personal_setting {setting:"interact_hint",limit:"2"}
execute as @s[nbt=!{Inventory:[{Slot:22b}]}] run function main:lib/event/personal_setting {setting:"ability_actionbar",limit:"3"}
execute as @s[nbt=!{Inventory:[{Slot:23b}]}] run function main:lib/event/personal_setting {setting:"ingame_tip",limit:"2"}
execute as @s[nbt=!{Inventory:[{Slot:24b}]}] run function main:lib/event/personal_setting {setting:"simplified_result",limit:"2"}

# 设置物品
item replace block 0 -7 0 container.11 with popped_chorus_fruit
item replace block 0 -7 0 container.12 with echo_shard
execute if score @s setting.ability_actionbar matches 2 run item replace block 0 -7 0 container.13 with emerald_block
execute if score @s setting.ability_actionbar matches 1 run item replace block 0 -7 0 container.13 with honey_block
execute if score @s setting.ability_actionbar matches 0 run item replace block 0 -7 0 container.13 with red_stained_glass
item replace block 0 -7 0 container.14 with light[block_state={level:"7"}]
item replace block 0 -7 0 container.15 with paper

# 光效处理
execute if entity @s[tag=skill_on] run item modify block 0 -7 0 container.4 {function:"set_components",components:{enchantment_glint_override:true}}
execute if entity @s[tag=talent_1_on] run item modify block 0 -7 0 container.7 {function:"set_components",components:{enchantment_glint_override:true}}
execute if entity @s[tag=talent_2_on] run item modify block 0 -7 0 container.8 {function:"set_components",components:{enchantment_glint_override:true}}
execute if entity @s[scores={tick.enhance=1..},team=guardian] run item modify block 0 -7 0 container.1 {function:"set_components",components:{enchantment_glint_override:true}}
execute if entity @s[tag=item_on,team=soul] run item modify block 0 -7 0 container.1 {function:"set_components",components:{enchantment_glint_override:true}}

# 数据处理
$execute if entity @s[team=guardian,scores={state=0}] run item modify block 0 -7 0 container.1 main:weapon/$(weapon)a
$execute if entity @s[team=guardian,scores={state=0,tick.enhance=1..}] run item modify block 0 -7 0 container.1 main:weapon/$(weapon)b
$execute if entity @s[team=guardian,scores={state=1}] run item modify block 0 -7 0 container.1 main:weapon/$(weapon)c
$execute if entity @s[team=guardian,scores={skill=5},tag=skill_on] run item modify block 0 -7 0 container.1 main:weapon/$(weapon)c
$execute if entity @s[team=soul] run item modify block 0 -7 0 container.1 main:item/$(item)
$execute if entity @s[team=soul] run item modify block 0 -7 0 container.4 main:skill/0$(skill)
$execute if entity @s[team=guardian] run item modify block 0 -7 0 container.4 main:skill/1$(skill)
$execute if entity @s[team=soul] run item modify block 0 -7 0 container.7 main:talent/0$(talent_1)
$execute if entity @s[team=guardian] run item modify block 0 -7 0 container.7 main:talent/1$(talent_1)
$execute if entity @s[team=soul] run item modify block 0 -7 0 container.8 main:talent/0$(talent_2)
$execute if entity @s[team=guardian] run item modify block 0 -7 0 container.8 main:talent/1$(talent_2)

# 进行完全部处理之后再发到玩家手里
item replace entity @s hotbar.1 from block 0 -7 0 container.1
item replace entity @s hotbar.4 from block 0 -7 0 container.4
item replace entity @s hotbar.7 from block 0 -7 0 container.7
item replace entity @s hotbar.8 from block 0 -7 0 container.8
execute if score @s setting.echo_info matches 0 run item replace entity @s inventory.11 from block 0 -7 0 container.11 main:setting/echo_info.0
execute if score @s setting.echo_info matches 1 run item replace entity @s inventory.11 from block 0 -7 0 container.11 main:setting/echo_info.1
execute if score @s setting.interact_hint matches 0 run item replace entity @s inventory.12 from block 0 -7 0 container.12 main:setting/interact_hint.0
execute if score @s setting.interact_hint matches 1 run item replace entity @s inventory.12 from block 0 -7 0 container.12 main:setting/interact_hint.1
execute if score @s setting.ability_actionbar matches 0 run item replace entity @s inventory.13 from block 0 -7 0 container.13 main:setting/ability_actionbar.0
execute if score @s setting.ability_actionbar matches 1 run item replace entity @s inventory.13 from block 0 -7 0 container.13 main:setting/ability_actionbar.1
execute if score @s setting.ability_actionbar matches 2 run item replace entity @s inventory.13 from block 0 -7 0 container.13 main:setting/ability_actionbar.2
execute if score @s setting.ingame_tip matches 0 run item replace entity @s inventory.14 from block 0 -7 0 container.14 main:setting/ingame_tip.0
execute if score @s setting.ingame_tip matches 1 run item replace entity @s inventory.14 from block 0 -7 0 container.14 main:setting/ingame_tip.1
execute if score @s setting.simplified_result matches 0 run item replace entity @s inventory.15 from block 0 -7 0 container.15 main:setting/simplified_result.0
execute if score @s setting.simplified_result matches 1 run item replace entity @s inventory.15 from block 0 -7 0 container.15 main:setting/simplified_result.1