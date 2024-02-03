execute if score $gamemode data matches 1 run tellraw @a [{"text":" » ","bold":true,"color":"#7367F0"},{"translate":"ms.setting.select","fallback":"当前选定","bold":false}," ",{"translate":"ms.mode.1","fallback":"灵气碎片","bold":false,"color":"aqua"}]
execute if score $gamemode data matches 1 run tellraw @a ["     ",{"translate":"ms.mode.1.desc","fallback":"收集散落的碎片，开启传送门，并且逃出生天；需要至少 5 人以开始"},"\n"]
execute if score $gamemode data matches 1 run data merge storage ms:mode {player_start:"5",player_cancel:"4"}

execute if score $gamemode data matches 2 run tellraw @a [{"text":" » ","bold":true,"color":"#7367F0"},{"translate":"ms.setting.select","fallback":"当前选定","bold":false}," ",{"translate":"ms.mode.2","fallback":"针锋奔逃","bold":false,"color":"aqua"}]
execute if score $gamemode data matches 2 run tellraw @a ["     ",{"translate":"ms.mode.2.desc","fallback":"傻孩子们，快跑啊，跑就完事了！需要两人即可开始"}]
execute if score $gamemode data matches 2 run tellraw @a ["     ",{"translate":"ms.exp.none","fallback":"🔗 此状态下无法获取经验值","color":"gray"},"\n"]
execute if score $gamemode data matches 2 run data merge storage ms:mode {player_start:"2",player_cancel:"1"}

function main:state/0/refresh/tutorial