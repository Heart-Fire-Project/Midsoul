# 所有非垂死灵魂都会产生标记，四秒后自我销毁
execute at @s[team=soul,scores={state=0}] run summon marker ~ ~ ~ {Tags:[new_tracker,tracker,game_entity]}
tp @n[tag=new_tracker] @s
scoreboard players operation @n[tag=new_tracker] entity_id = @s entity_id
scoreboard players set @n[tag=new_tracker] tick.general 4
tag @e remove new_tracker

# 守卫者出现在标记半径三格内，视为正在追逐
execute if entity @e[tag=tracker,distance=..3] run scoreboard players add @s[team=guardian] temp.track 1

# 灵魂牵制判定条件同上，注意不要每个标记都加分
scoreboard players operation $entity_id temp = @s entity_id
execute as @e[tag=tracker] if score @s entity_id = $entity_id temp run tag @s add tie_pend
scoreboard players set $pending temp 0
execute at @e[tag=tie_pend] if entity @e[team=guardian,distance=..3] run scoreboard players set $pending temp 1
tag @e remove tie_pend
execute if score $pending temp matches 1 run scoreboard players add @s[team=soul] temp.tie 1

# 表现分这一块
execute if score $pending temp matches 1 run tellraw @s[scores={setting.instant_rating=1,temp.tie=60}] [{text:" +85 | ",color:"#F2850D"},{translate:"ms.rating.tie",fallback:"守卫牵制"}," 60s"]
execute if score $pending temp matches 1 run tellraw @s[scores={setting.instant_rating=1,temp.tie=120}] [{text:" +105 | ",color:"#F2850D"},{translate:"ms.rating.tie",fallback:"守卫牵制"}," 120s"]
execute if entity @e[tag=tracker,distance=..3] run tellraw @s[scores={setting.instant_rating=1,temp.track=60}] [{text:" +120 | ",color:"#EC7042"},{translate:"ms.rating.track",fallback:"追灵寻踪"}," 60s"]
execute if entity @e[tag=tracker,distance=..3] run tellraw @s[scores={setting.instant_rating=1,temp.track=120}] [{text:" +145 | ",color:"#EC7042"},{translate:"ms.rating.track",fallback:"追灵寻踪"}," 120s"]