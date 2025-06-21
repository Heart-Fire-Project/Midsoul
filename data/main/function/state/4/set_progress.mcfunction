# 计算百分比
function base:caculate/percent {valueA:"@s",valueB:"#8000",sourceA:"countdown",sourceB:"data"}
execute if score @s countdown matches ..7999 run data modify entity @n[tag=purple_progress] text set value '["[ ",{"score":{"name":"$front","objective":"temp2"}},"% ]"]'
execute if score @s countdown matches 8000.. run data modify entity @n[tag=purple_progress] text set value '"[ 100% ]"'

# 设置背景颜色
execute if score $4_process_color countdown matches 31.. run scoreboard players set $4_process_color countdown 1
execute if score $4_process_color countdown matches 15 if entity @s[tag=!charging_purple,tag=!open_purple] run data merge entity @n[tag=purple_progress] {background:-2134114303,interpolation_duration:15,start_interpolation:0}
execute if score $4_process_color countdown matches 30 if entity @s[tag=!charging_purple] run data merge entity @n[tag=purple_progress] {background:-2132729568,interpolation_duration:15,start_interpolation:0}
execute if score $4_process_color countdown matches 15 if entity @s[tag=charging_purple,tag=!open_purple] run data merge entity @n[tag=purple_progress] {background:-2141353304,interpolation_duration:15,start_interpolation:0}
execute if score $4_process_color countdown matches 30 if entity @s[tag=charging_purple,tag=!open_purple] run data merge entity @n[tag=purple_progress] {background:-2139971391,interpolation_duration:15,start_interpolation:0}
execute if score $4_process_color countdown matches 15 if entity @s[tag=open_purple] run data merge entity @n[tag=purple_progress] {background:-2145352600,interpolation_duration:15,start_interpolation:0}
execute if score $4_process_color countdown matches 30 if entity @s[tag=open_purple] run data merge entity @n[tag=purple_progress] {background:-2147441026,interpolation_duration:15,start_interpolation:0}

# 设置位移
execute as @n[tag=purple_progress] if entity @a[gamemode=adventure,distance=..1] if score @s[tag=purple_progress] countdown matches 0 run data merge entity @s {transformation:{translation:[0f,0.8f,0f]},interpolation_duration:3,start_interpolation:0}
execute as @n[tag=purple_progress] if entity @a[gamemode=adventure,distance=..1] if score @s countdown matches 0 run scoreboard players set @s countdown 1
execute as @n[tag=purple_progress] unless entity @a[gamemode=adventure,distance=..1] if score @s countdown matches 1 run data merge entity @s {transformation:{translation:[0,0,0]},interpolation_duration:3,start_interpolation:0}
execute as @n[tag=purple_progress] unless entity @a[gamemode=adventure,distance=..1] if score @s countdown matches 1 run scoreboard players set @s countdown 0