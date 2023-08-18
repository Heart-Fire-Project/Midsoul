# 第二状态慢处理
execute at @a[scores={state=1,countdown=0..},team=alive] run playsound block.beacon.ambient player @a[scores={state=1,countdown=0..},team=alive]
execute if entity @a[team=alive,scores={talent_1=3}] if entity @a[scores={state=1,countdown=0..},team=alive] run effect give @a[team=alive] speed 1 0 true
execute if entity @a[team=alive,scores={talent_2=3}] if entity @a[scores={state=1,countdown=0..},team=alive] run effect give @a[team=alive] speed 1 0 true

# 确认游戏是否结束
function game:state/4/check_end