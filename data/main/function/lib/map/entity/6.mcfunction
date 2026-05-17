summon mannequin -1805.6 69.0 2183.6 {Tags:[map_entity],profile:{name:"SowingFlyer7716"},Rotation:[49.64f,17.34f],pose:"crouching",Invulnerable:1b,immovable:1b}
summon text_display -1886.97 72.2 2233.8 {Tags:[map_entity],text:"🗘",background:0,billboard:"fixed",alignment:"center",line_width:100,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display -1886.99 72.5 2234.0 {Tags:[map_entity],item:{id:"pale_oak_boat"},billboard:"fixed",transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon bamboo_raft -1865.1 65.5 2204.5 {Tags:[map_entity],Rotation:[-167,0],Passengers:[{id:"block_display",Tags:[game_entity,new_gray,gray],block_state:{Name:"light_gray_shulker_box"},transformation:{scale:[0.5f,0.5f,0.5f],translation:[-0.25f,0f,-0.25f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}]}
execute at @e[tag=new_gray] run particle dust{color:[1,1,1],scale:1} ~ ~0.2 ~ 0.2 0.1 0.2 0 7 force @a
team join chest @e[tag=new_gray]
tag @e remove new_gray