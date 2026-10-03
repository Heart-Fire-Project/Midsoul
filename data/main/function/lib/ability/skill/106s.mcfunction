# 生成诡雷
# 拎出来写是因为可以遥控玩家下包，这很有趣不是吗
summon armor_stand ~ ~0.2 ~ {Tags:[game_entity,S106,S106n],attributes:[{id:"scale",base:0.07}],equipment:{head:{id:"red_concrete_powder"}},DisabledSlots:16191,Passengers:[{id:"block_display",Tags:[game_entity,S106n],block_state:{id:"smooth_stone_slab"},transformation:{scale:[0.21f,0.21f,0.21f],translation:[-0.105f,-0.135f,-0.105f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}],Invisible:1b,Invulnerable:1b,Silent:1b}

team join guardian @e[tag=S106n]
scoreboard players operation @e[tag=S106n] entity_id = @s entity_id
tag @e remove S106n