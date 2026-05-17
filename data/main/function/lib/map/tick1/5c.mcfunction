# 生成坐骑
summon armor_stand ~ ~ ~ {Tags:[game_entity,M05,M05n],Motion:[-2.4d,-0.5d,2.4d],attributes:[{id:"scale",base:0.1}],Invisible:1b,Invulnerable:1b,Silent:1b,OnGround:0b}
ride @s mount @n[tag=M05n]
tag @e remove M05n
playsound entity.wind_charge.wind_burst