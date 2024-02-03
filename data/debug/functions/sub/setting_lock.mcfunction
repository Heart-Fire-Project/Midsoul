function base:modify_setting/next {setting:"$settinglock",storage:"data",limit:"2"}

tellraw @s "\n\n\n\n\n\n\n"
execute if score $settinglock data matches 0 run tellraw @a [{"text":" » ","bold":true,"color":"#7367F0"},{"translate":"ms.setting.settinglock","fallback":"限制设置","bold":false}," ",{"translate":"ms.setting.disable","fallback":"已关闭","bold":false,"color":"red"}]
execute if score $settinglock data matches 0 run tellraw @a ["     ",{"translate":"ms.setting.settinglock.0","fallback":"所有玩家都可以调整游戏设置"},"\n"]
execute if score $settinglock data matches 1 run tellraw @a [{"text":" » ","bold":true,"color":"#7367F0"},{"translate":"ms.setting.settinglock","fallback":"限制设置","bold":false}," ",{"translate":"ms.setting.enable","fallback":"已开启","bold":false,"color":"green"}]
execute if score $settinglock data matches 1 run tellraw @a ["     ",{"translate":"ms.setting.settinglock.1","fallback":"仅有处于 %s 队伍的玩家可以调整设置","with":[{"text":"admin","underlined":true,"clickEvent":{"action":"suggest_command","value":"/team join admin [NAME]"}}]},"\n"]

playsound ui.button.click player @a
function main:state/0/refresh/sign