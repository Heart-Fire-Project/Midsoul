# 生成碎片
execute at @e[tag=marker_blue] run summon item ~ ~0.5 ~ {Tags:[game_entity,new_blue,blue],Item:{id:"minecraft:echo_shard",Count:1},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute at @e[tag=new_blue] run particle glow ~ ~0.2 ~ 0.2 0.1 0.2 5 15 force @a[team=!protect]
execute as @e[tag=new_blue] run team join shard @s
execute as @e[tag=new_blue] run tag @s remove new_blue

# 标题
title @a[team=!admin] title {"translate":"ms.title","fallback": "午夜 🔯 灵魂","color": "#BC78EC"}
title @a[team=!admin] subtitle {"translate":"ms.title.start","fallback": "▣ 游戏开始 ▣","color": "#BC78EC"}

# 音效
playsound minecraft:block.end_portal.spawn player @a[team=!alive] 0 1000000 0 1000000 1

# 系统重置
function game:state/3/reset