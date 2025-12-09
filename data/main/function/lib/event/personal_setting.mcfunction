# 调整个人设定
# 需要参数：setting(设定项) limit{该值应为最大值 +1}
# 注意超限后回复到的值是 0
$scoreboard players add @s setting.$(setting) 1
$execute if score @s setting.$(setting) matches $(limit).. run scoreboard players set @s setting.$(setting) 0
playsound ui.button.click player @s 0 1000000 0 120000

# 清除设定项对应的物品，以免影响连续调整
scoreboard players reset $instant_rating temp
scoreboard players reset $interact_hint temp
scoreboard players reset $ability_status temp
scoreboard players reset $ingame_tip temp
scoreboard players reset $echo_info temp
$scoreboard players set $$(setting) temp 1
execute if score $instant_rating temp matches 1 run clear @s firework_star[custom_data={id:74010}]
execute if score $instant_rating temp matches 1 run clear @s firework_star[custom_data={id:74011}]
execute if score $interact_hint temp matches 1 run clear @s firework_star[custom_data={id:74020}]
execute if score $interact_hint temp matches 1 run clear @s firework_star[custom_data={id:74021}]
execute if score $ability_status temp matches 1 run clear @s firework_star[custom_data={id:74030}]
execute if score $ability_status temp matches 1 run clear @s firework_star[custom_data={id:74031}]
execute if score $ability_status temp matches 1 run clear @s firework_star[custom_data={id:74032}]
execute if score $ingame_tip temp matches 1 run clear @s firework_star[custom_data={id:74040}]
execute if score $ingame_tip temp matches 1 run clear @s firework_star[custom_data={id:74041}]
execute if score $echo_info temp matches 1 run clear @s firework_star[custom_data={id:74050}]
execute if score $echo_info temp matches 1 run clear @s firework_star[custom_data={id:74051}]

# 需要直接调整的场合
tag @s[tag=hint_blue] remove hint_blue
tag @s[tag=hint_gold] remove hint_gold
tag @s[tag=hint_gray] remove hint_gray
tag @s[tag=hint_purple] remove hint_purple