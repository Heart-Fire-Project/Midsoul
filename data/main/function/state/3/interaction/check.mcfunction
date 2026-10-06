# 添加基础 tag
tag @s add interacting
tag @s[team=soul] add interact_blue
tag @s[team=soul] add interact_gold
tag @s add interact_gray
tag @s[team=guardian,scores={skill=6}] add S106i
execute if score $echo data matches 2 run tag @s[team=soul] add E02

# 判断交互类型
tag @s[tag=!sneaking] remove interacting
execute unless entity @e[tag=blue,distance=..0.7] run tag @s remove interact_blue
execute unless entity @e[tag=gold,distance=..0.7] run tag @s remove interact_gold
execute unless entity @e[tag=gray,distance=..0.7] run tag @s remove interact_gray
execute unless entity @e[tag=S106,distance=..0.7] run tag @s remove S106i
execute unless entity @e[tag=fake_blue,distance=..0.7] run tag @s remove E02
tag @s[tag=!interact_blue,tag=!interact_gold,tag=!interact_gray,tag=!S106i,tag=!E02] remove interacting

# 交互提示
tag @s remove show_title
execute unless score @s tick.using matches 1.. run tag @s[tag=!status_display] add show_title
title @s[tag=hint_blue,tag=show_title] actionbar [{translate:"ms.hint.blue",fallback:"长按 [%s] 以收集",with:[{keybind:"key.sneak"}],color:"#50A7D9"}]
title @s[tag=hint_gold,tag=show_title] actionbar [{translate:"ms.hint.gold",fallback:"长按 [%s] 以点亮",with:[{keybind:"key.sneak"}],color:"gold"}]
title @s[tag=hint_gray,tag=show_title] actionbar [{translate:"ms.hint.gray",fallback:"长按 [%s] 以打开",with:[{keybind:"key.sneak"}],color:"gray"}]
title @s[tag=hint_S106,tag=show_title] actionbar [{translate:"ms.hint.S106",fallback:"长按 [%s] 以拆除",with:[{keybind:"key.sneak"}],color:"#D0342C"}]
tag @s[tag=!interacting,tag=interact_blue,scores={setting.interact_hint=1},tag=show_title] add hint_blue
tag @s[tag=!interacting,tag=interact_gold,scores={setting.interact_hint=1},tag=show_title] add hint_gold
tag @s[tag=!interacting,tag=interact_gray,scores={setting.interact_hint=1},tag=show_title] add hint_gray
tag @s[tag=!interacting,tag=S106i,scores={setting.interact_hint=1},tag=show_title] add hint_S106
tag @s[tag=!interacting,tag=E02,scores={setting.interact_hint=1},tag=show_title] add hint_blue
title @s[tag=hint_blue,tag=!interact_blue,tag=!E02] actionbar ""
title @s[tag=hint_gold,tag=!interact_gold] actionbar ""
title @s[tag=hint_gray,tag=!interact_gray] actionbar ""
title @s[tag=hint_S106,tag=!S106i] actionbar ""
tag @s[tag=interacting] remove hint_blue
tag @s[tag=interacting] remove hint_gold
tag @s[tag=interacting] remove hint_gray
tag @s[tag=interacting] remove hint_S106
tag @s[tag=!interact_blue,tag=!E02] remove hint_blue
tag @s[tag=!interact_gold] remove hint_gold
tag @s[tag=!interact_gray] remove hint_gray
tag @s[tag=!S106i] remove hint_S106

# 判定：交互开始时
execute as @s[tag=interacting] unless score @s tick.interact matches 1.. run function main:lib/action/interact/start

# 判定：交互中断时
execute as @s[scores={tick.interact=1..},tag=!interacting] run function main:lib/action/interact/break

# 刷新进程
scoreboard players reset @s[tag=!interacting] tick.interact
scoreboard players operation @s[tag=interacting] temp = $interact_speed setting

# 判定：进行交互时
execute as @s[tag=interacting] run function main:lib/action/interact/tick

# 收集完成
execute as @s[tag=interact_blue,scores={tick.interact=7000..}] as @e[tag=blue,distance=..0.7] run function main:state/3/interaction/blue with storage ms:map
execute as @s[tag=interact_gold,scores={tick.interact=14000..}] as @e[tag=gold,distance=..0.7] run function main:state/3/interaction/gold
execute as @s[tag=interact_gray,scores={tick.interact=10000..}] as @e[tag=gray,distance=..0.7] run function main:state/3/interaction/gray
execute as @s[tag=S106i,scores={tick.interact=4000..}] as @e[tag=S106,distance=..0.7] run function main:lib/ability/skill/106d
execute as @s[tag=E02,scores={tick.interact=7000..}] as @e[tag=fake_blue,distance=..0.7] run function main:lib/echo/02a