tag @a[distance=..0.7,tag=gold_interact,scores={tick.general=1400..}] add interact_fin

# 完成灵灯点亮
particle wax_on ~ ~0.5 ~ 0.25 0.3 0.25 5 32 force @a
playsound entity.evoker.prepare_summon player @a

# 实时表现分
scoreboard players add @a[tag=interact_fin] temp.heal 1
tellraw @a[tag=interact_fin,scores={setting.instant_rating=1}] [{text:" +65 | ",color:"#EEC400"},{translate:"ms.rating.heal",fallback:"队友救助"}]
tellraw @a[tag=interact_fin,scores={setting.instant_rating=1,temp.heal=2}] [{text:" +40 | ",color:"#EEC400"},{translate:"ms.rating.heal",fallback:"队友救助"}," ×2"]
tellraw @a[tag=interact_fin,scores={setting.instant_rating=1,temp.heal=4}] [{text:" +60 | ",color:"#EEC400"},{translate:"ms.rating.heal",fallback:"队友救助"}," ×4"]

# 按照病情进行救治
scoreboard players set $heal temp 1010000
execute as @a[team=soul,scores={state=1}] run scoreboard players operation $heal temp < @s tick.general
execute as @a[team=soul,scores={state=1}] if score @s tick.general = $heal temp run tag @s add heal
execute at @s as @r[tag=heal] run function main:state/3/player/soul/healed
tag @a remove heal

tag @a remove interact_fin
kill @s