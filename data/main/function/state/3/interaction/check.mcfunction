# 添加基础 tag
tag @s add interacting
tag @s[team=soul] add blue_interact
tag @s[team=soul] add gold_interact
tag @s add gray_interact
execute if score $echo data matches 2 run tag @s[team=soul] add E02

# 判断交互类型
execute unless score @s detect.sneak matches 1.. run tag @s remove interacting
execute unless entity @e[tag=blue,distance=..0.7] run tag @s remove blue_interact
execute unless entity @e[tag=gold,distance=..0.7] run tag @s remove gold_interact
execute unless entity @e[tag=gray,distance=..0.7] run tag @s remove gray_interact
execute unless entity @e[tag=fake_blue,distance=..0.7] run tag @s remove E02
tag @s[tag=!blue_interact,tag=!gold_interact,tag=!gray_interact,tag=!E02] remove interacting

# 交互提示
tag @s remove show_title
execute unless score @s tick.using matches 1.. run tag @s add show_title
execute as @s[tag=blue_hint,tag=show_title] run title @s actionbar [{translate:"ms.hint.blue",fallback:"长按 [%s] 以收集",with:[{keybind:"key.sneak"}],color:"#50A7D9"}]
execute as @s[tag=gold_hint,tag=show_title] run title @s actionbar [{translate:"ms.hint.gold",fallback:"长按 [%s] 以点亮",with:[{keybind:"key.sneak"}],color:"gold"}]
execute as @s[tag=gray_hint,tag=show_title] run title @s actionbar [{translate:"ms.hint.gray",fallback:"长按 [%s] 以打开",with:[{keybind:"key.sneak"}],color:"gray"}]
execute as @s[tag=!interacting,tag=blue_interact,scores={setting.interact_hint=1}] run tag @s add blue_hint
execute as @s[tag=!interacting,tag=gold_interact,scores={setting.interact_hint=1}] run tag @s add gold_hint
execute as @s[tag=!interacting,tag=gray_interact,scores={setting.interact_hint=1}] run tag @s add gray_hint
execute as @s[tag=!interacting,tag=E02,scores={setting.interact_hint=1}] run tag @s add blue_hint
execute as @s[tag=blue_hint,tag=!blue_interact,tag=!E02] run title @s actionbar ""
execute as @s[tag=gold_hint,tag=!gold_interact] run title @s actionbar ""
execute as @s[tag=gray_hint,tag=!gray_interact] run title @s actionbar ""
tag @s[tag=interacting] remove blue_hint
tag @s[tag=interacting] remove gold_hint
tag @s[tag=interacting] remove gray_hint
tag @s[tag=!blue_interact,tag=!E02] remove blue_hint
tag @s[tag=!gold_interact] remove gold_hint
tag @s[tag=!gray_interact] remove gray_hint

# 判定：交互中断时
execute as @s[scores={talent_1=1,tick.general=1..},tag=blue_interact,tag=!interacting,tag=talent_1_on] run function main:state/3/ability/talent/001f
execute as @s[scores={talent_2=1,tick.general=1..},tag=blue_interact,tag=!interacting,tag=talent_2_on] run function main:state/3/ability/talent/001f

# 刷新进程
scoreboard players reset @s[tag=!interacting] tick.general
scoreboard players operation @s[tag=interacting] temp = $interact_speed setting

# 判定：进行交互时
execute if score $echo data matches 8 as @s[tag=blue_interact,tag=interacting] run function main:state/3/echo/08
execute as @s[scores={talent_1=1},tag=blue_interact,tag=interacting,tag=talent_1_on] run function main:state/3/ability/talent/001a
execute as @s[scores={talent_2=1},tag=blue_interact,tag=interacting,tag=talent_2_on] run function main:state/3/ability/talent/001a
execute as @s[scores={talent_1=7},tag=interacting] run function main:state/3/ability/talent/007
execute as @s[scores={talent_2=7},tag=interacting] run function main:state/3/ability/talent/007
execute if score $echo data matches 5 as @s[team=soul,tag=interacting] run function main:state/3/echo/05

# 额外判定与结算
execute if score $undying data matches 1 run scoreboard players operation @s[tag=gold_interact] temp += $interact_speed setting
scoreboard players operation @s[tag=interacting] tick.general += @s temp

# 收集完成
execute as @s[tag=blue_interact,scores={tick.general=7000..}] as @e[tag=blue,distance=..0.7] run function main:state/3/interaction/blue with storage ms:map
execute as @s[tag=gold_interact,scores={tick.general=14000..}] as @e[tag=gold,distance=..0.7] run function main:state/3/interaction/gold
execute as @s[tag=gray_interact,scores={tick.general=10000..}] as @e[tag=gray,distance=..0.7] run function main:state/3/interaction/gray
execute as @s[tag=E02,scores={tick.general=7000..}] as @e[tag=fake_blue,distance=..0.7] run function main:state/3/echo/02a