# 去除状态效果
effect clear @s

# 基础数值设定
team join spectator @s
function main:lib/action/reset_attribute

# 去除游戏内标签
tag @s remove hidden_parkour
tag @s remove queryer
tag @s remove quering
tag @s remove game_player
tag @s remove check_join
tag @s remove check_ability
tag @a remove status_display
tag @s remove echo_target
tag @s remove item_on
tag @s remove skill_on
tag @s remove talent_1_on
tag @s remove talent_2_on

# 按照阶段进行不同入场流程
scoreboard players reset @s music
execute if score $state data matches 0 run function main:state/0/player_enter
execute if score $state data matches 1 run function main:state/1/player_enter/spectator
execute if score $state data matches 2.. run function main:lib/event/music_roll
execute if score $state data matches 2.. run gamemode spectator @s
execute if score $state data matches 2.. run tp @s @r[limit=1,tag=game_player]
execute if score $state data matches 2.. run tellraw @s [{text:"» ",bold:true},{translate:"ms.info.mid_spec",fallback:"游戏正在进行中，请稍作等候……",bold:false}]