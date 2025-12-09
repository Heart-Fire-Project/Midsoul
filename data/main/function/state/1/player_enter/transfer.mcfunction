# 管理员 → 参加游戏
team join prepare @s
function main:state/1/player_enter/prepare
tag @s add check_join

# 算一次人数
scoreboard players set $player temp 0
execute as @a[tag=game_player] run scoreboard players add $player temp 1

# 看看这下超了没
execute if score $player temp matches 10.. run tellraw @a[team=admin,tag=!check_join] ["",{text:"» ",color:"#33FF33",bold:true},{translate:"ms.info.1.admin_stop",fallback:"玩家数已达上限，管理员加入阶段已提前结束",color:"#33FF33"}]
execute if score $player temp matches 10.. run tag @a[team=admin,tag=!check_join] add check_join