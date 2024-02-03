# 第二状态慢处理
execute at @a[scores={state=1,countdown=0..},team=alive] run playsound block.beacon.ambient player @a[scores={state=1,countdown=0..},team=alive]
execute if entity @a[team=alive,scores={talent_1=3}] if entity @a[scores={state=1,countdown=0..},team=alive] run effect give @a[team=alive] speed 1 0 true
execute if entity @a[team=alive,scores={talent_2=3}] if entity @a[scores={state=1,countdown=0..},team=alive] run effect give @a[team=alive] speed 1 0 true

# 物品栏重设
execute as @a[team=!admin] run function game:state/3/refresh_inventory

# 确认游戏是否结束
function game:state/3/check_end

# 确认游戏是否强制进入下一阶段
execute unless score $sub_state data matches 1 if score $temp stat_temp_play_time matches 18000.. run function game:state/3/force_end
execute if score $now_play_time temp matches 19200.. run function game:state/4/enter