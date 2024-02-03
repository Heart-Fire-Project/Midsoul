# 灵魂是能背包吗？显然不能
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
item replace entity @s inventory.11 with air
item replace entity @s inventory.12 with air
item replace entity @s inventory.13 with air
item replace entity @s inventory.14 with air
item replace entity @s inventory.15 with air
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
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

# 用不到的物品栏
item replace entity @s hotbar.0 with air
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air

# 守卫者武器
item replace entity @s[team=protect] hotbar.1 with golden_sword
item replace entity @s[team=protect,scores={state=1}] hotbar.1 with barrier
item replace entity @s[team=protect,scores={skill=5},tag=skill_on] hotbar.1 with structure_void

# 技能物品
item replace entity @s[scores={skill=1},team=soul] hotbar.4 with phantom_membrane
item replace entity @s[scores={skill=2},team=soul] hotbar.4 with soul_lantern
item replace entity @s[scores={skill=3},team=soul] hotbar.4 with recovery_compass
$item replace entity @s[scores={skill=4},team=soul] hotbar.4 with dragon_breath $(skill_004)
item replace entity @s[scores={skill=5},team=soul] hotbar.4 with shulker_shell
item replace entity @s[scores={skill=1},team=protect] hotbar.4 with spectral_arrow
$item replace entity @s[scores={skill=2},team=protect] hotbar.4 with echo_shard $(skill_102)
item replace entity @s[scores={skill=3},team=protect] hotbar.4 with compass
item replace entity @s[scores={skill=4},team=protect] hotbar.4 with ender_chest
item replace entity @s[scores={skill=5},team=protect] hotbar.4 with light_gray_dye
item replace entity @s[scores={state=0,skill_tick=1..}] hotbar.4 with firework_star
item replace entity @s[scores={state=1}] hotbar.4 with barrier

# 天赋物品
item replace entity @s[scores={talent_1=1},team=soul] hotbar.7 with glow_ink_sac
item replace entity @s[scores={talent_1=2},team=soul] hotbar.7 with blaze_powder
item replace entity @s[scores={talent_1=3},team=soul] hotbar.7 with magma_cream
item replace entity @s[scores={talent_1=4},team=soul] hotbar.7 with soul_torch
item replace entity @s[scores={talent_1=5},team=soul] hotbar.7 with feather
item replace entity @s[scores={talent_1=6},team=soul] hotbar.7 with echo_shard
$item replace entity @s[scores={talent_1=7},team=soul] hotbar.7 with cyan_dye $(talent_007)
item replace entity @s[scores={talent_1=1},team=protect] hotbar.7 with crimson_fungus
item replace entity @s[scores={talent_1=2},team=protect] hotbar.7 with red_dye
item replace entity @s[scores={talent_1=3},team=protect] hotbar.7 with book
item replace entity @s[scores={talent_1=4},team=protect] hotbar.7 with black_candle
item replace entity @s[scores={talent_1=5},team=protect] hotbar.7 with recovery_compass
item replace entity @s[scores={talent_1=6},team=protect] hotbar.7 with redstone
$item replace entity @s[scores={talent_1=7},team=protect] hotbar.7 with amethyst_shard $(talent_107)
item replace entity @s[scores={talent_1=2,talent_1_tick=1..},team=soul] hotbar.7 with firework_star
item replace entity @s[scores={talent_1=2,talent_1_tick=1..},team=protect] hotbar.7 with firework_star
item replace entity @s[scores={talent_1=7,talent_107=0},team=protect] hotbar.7 with firework_star
item replace entity @s[scores={talent_2=1},team=soul] hotbar.8 with glow_ink_sac
item replace entity @s[scores={talent_2=2},team=soul] hotbar.8 with blaze_powder
item replace entity @s[scores={talent_2=3},team=soul] hotbar.8 with magma_cream
item replace entity @s[scores={talent_2=4},team=soul] hotbar.8 with soul_torch
item replace entity @s[scores={talent_2=5},team=soul] hotbar.8 with feather
item replace entity @s[scores={talent_2=6},team=soul] hotbar.8 with echo_shard
$item replace entity @s[scores={talent_2=7},team=soul] hotbar.8 with cyan_dye $(talent_007)
item replace entity @s[scores={talent_2=1},team=protect] hotbar.8 with crimson_fungus
item replace entity @s[scores={talent_2=2},team=protect] hotbar.8 with red_dye
item replace entity @s[scores={talent_2=3},team=protect] hotbar.8 with book
item replace entity @s[scores={talent_2=4},team=protect] hotbar.8 with black_candle
item replace entity @s[scores={talent_2=5},team=protect] hotbar.8 with recovery_compass
item replace entity @s[scores={talent_2=6},team=protect] hotbar.8 with redstone
$item replace entity @s[scores={talent_2=7},team=protect] hotbar.8 with amethyst_shard $(talent_107)
item replace entity @s[scores={talent_2=2,talent_2_tick=1..},team=soul] hotbar.8 with firework_star
item replace entity @s[scores={talent_2=2,talent_2_tick=1..},team=proect] hotbar.8 with firework_star
item replace entity @s[scores={talent_2=7,talent_107=0},team=protect] hotbar.8 with firework_star

# 灵魂宝物
item replace entity @s[scores={item=0},team=soul] hotbar.1 with structure_void
item replace entity @s[scores={item=1},team=soul] hotbar.1 with iron_chestplate
item replace entity @s[scores={item=2},team=soul] hotbar.1 with prismarine_shard
item replace entity @s[scores={item=3},team=soul] hotbar.1 with clock
item replace entity @s[scores={item=4},team=soul] hotbar.1 with shaper_armor_trim_smithing_template
item replace entity @s[scores={item=5},team=soul] hotbar.1 with player_head{SkullOwner:{Id:[I;-2028710611,-535870698,-1464817086,-1561423040],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk4Njc5NDUyMTg2OWU4MzI3ZWY4MWRiYzM1Yzk4NTZiYzQwNTFkZjk4ODhkODFlYWIyMTI0NDJiMTc2YTgyZiJ9fX0="}]}}}
item replace entity @s[scores={item=6},team=soul] hotbar.1 with quartz
item replace entity @s[scores={state=1},team=soul] hotbar.1 with barrier

# 数据处理
item modify entity @s[team=protect,tag=!double_damage] hotbar.1 main:weapon/normal
item modify entity @s[team=protect,tag=double_damage] hotbar.1 main:weapon/double
item modify entity @s[team=soul,scores={item=0}] hotbar.1 main:item/0
$item modify entity @s[team=soul,scores={item=1..}] hotbar.1 main:item/$(item)
$item modify entity @s[team=soul] hotbar.4 main:skill/0$(skill)
$item modify entity @s[team=protect] hotbar.4 main:skill/1$(skill)
$item modify entity @s[team=soul] hotbar.7 main:talent/0$(talent_1)
$item modify entity @s[team=protect] hotbar.7 main:talent/1$(talent_1)
$item modify entity @s[team=soul] hotbar.8 main:talent/0$(talent_2)
$item modify entity @s[team=protect] hotbar.8 main:talent/1$(talent_2)

# 特殊的开启状态处理
item modify entity @s[tag=skill_on] hotbar.4 main:skill/on
item modify entity @s[tag=talent_1_on] hotbar.7 main:skill/on
item modify entity @s[tag=talent_2_on] hotbar.8 main:skill/on
item modify entity @s[tag=item_on] hotbar.1 main:skill/on

item replace entity @s weapon.offhand with air