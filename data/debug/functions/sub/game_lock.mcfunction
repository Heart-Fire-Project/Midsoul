function base:modify_setting/next {setting:"$gamelock",storage:"data",limit:"2"}

tellraw @s "\n\n\n\n\n\n\n"
execute if score $gamelock data matches 0 run tellraw @a [{"text":" » ","bold":true,"color":"#7367F0"},{"translate":"ms.setting.gamelock","fallback":"锁定游戏","bold":false}," ",{"translate":"ms.setting.disable","fallback":"已关闭","bold":false,"color":"red"}]
execute if score $gamelock data matches 0 run tellraw @a ["     ",{"translate":"ms.setting.gamelock.0","fallback":"游戏会正常开始，若需要调整设置可以搭配限制设置使用"},"\n"]
execute if score $gamelock data matches 1 run tellraw @a [{"text":" » ","bold":true,"color":"#7367F0"},{"translate":"ms.setting.gamelock","fallback":"锁定游戏","bold":false}," ",{"translate":"ms.setting.enable","fallback":"已开启","bold":false,"color":"green"}]
execute if score $gamelock data matches 1 run tellraw @a ["     ",{"translate":"ms.setting.gamelock.1","fallback":"游戏将不会开始，需要在调整完设置后手动关闭"},"\n"]

playsound ui.button.click player @a
function main:state/0/refresh/sign