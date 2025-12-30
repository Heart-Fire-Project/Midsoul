# 添加基础 tag
tag @s add interacting
tag @s add interact_purple

# 判断交互类型
execute unless score @s detect.sneak matches 1.. run tag @s remove interacting
execute unless entity @e[tag=purple,distance=..0.7,tag=!open_purple] run tag @s remove interact_purple
tag @s[tag=!interact_purple] remove interacting

# 交互提示
tag @s remove show_title
execute unless score @s tick.using matches 1.. run tag @s add show_title
execute as @s[tag=hint_purple,tag=show_title] run title @s actionbar [{translate:"ms.hint.purple",fallback:"长按 [%s] 以充能",with:[{keybind:"key.sneak"}],color:"light_purple"}]
execute as @s[tag=!interacting,tag=interact_purple,scores={setting.interact_hint=1}] run tag @s add hint_purple
execute as @s[tag=hint_purple,tag=!interact_purple] run title @s actionbar ""
tag @s[tag=interacting] remove hint_purple
tag @s[tag=!interact_purple] remove hint_purple

# 刷新进程 | 注意暂存，以供后续处理
scoreboard players operation @s[tag=interact_purple,tag=interacting] temp = $interact_speed setting

# 判定：进行交互时
function main:lib/action/interact/tick

# 存储进充能进度
execute as @s[tag=interact_purple,tag=interacting] run function main:lib/rating/1/charge