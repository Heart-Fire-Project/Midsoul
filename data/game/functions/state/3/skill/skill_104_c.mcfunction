tellraw @s [{"text": " » ","bold": true,"color": "aqua"},{"translate":"ms.skill.104.c","fallback": "场上不存在未被诅咒的灵魂宝物箱，因此恶灵重新生成了两个被诅咒的灵魂宝物箱。","bold": false}]
kill @e[tag=game_entity,tag=gray]
execute at @e[tag=marker_gray,sort=random,limit=2] run summon minecraft:block_display ~ ~ ~ {Tags:[game_entity,new_gray,gray,cursed],block_state:{Name:gray_shulker_box},transformation:{scale:[0.5f,0.5f,0.5f],translation:[-0.25f,0f,-0.25f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}
execute at @e[tag=new_gray] run particle glow ~ ~0.2 ~ 0.2 0.1 0.2 5 15 force @a
execute as @e[tag=new_gray] run team join chest @s
execute as @e[tag=new_gray] run tag @s remove new_gray