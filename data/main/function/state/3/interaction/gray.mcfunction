tag @a[distance=..0.7,tag=interact_gray,scores={tick.general=1000..}] add interact_fin

# 完成灵魂宝物盒开启
scoreboard players add @a[tag=interact_fin] temp.open 1
particle dust{color:[1,1,1],scale:1} ~ ~0.2 ~ 0.2 0.1 0.2 0 7 force @a
playsound block.shulker_box.open player @a

# 判定：开启灵魂宝物盒时
execute if score $echo data matches 3 as @a[team=guardian,tag=interact_fin,scores={tick.skill=1..}] run scoreboard players remove @s tick.skill 70000

# 灵魂效果
tag @e[team=soul,distance=..0.7,tag=interact_gray,scores={tick.general=1000..}] add target
data modify storage ms:temp min set value 1
execute store result storage ms:temp max int 1 run scoreboard players get $item_max data
function base:random with storage ms:temp
execute if score $echo data matches 3 run function main:state/3/echo/03
execute if entity @p[tag=target,scores={item=1..}] run effect give @p[team=guardian] glowing 3 0
effect give @p[tag=target,scores={item=1..,health=..19}] regeneration 3 2
effect give @p[tag=target,scores={item=1..,health=20}] absorption infinite 0 true
advancement grant @p[tag=target,scores={item=0}] only main:tutorial/mechanic/2
execute as @p[tag=target,scores={item=0}] run scoreboard players operation @s item = $random temp2
tag @a remove target

# 守卫效果
effect give @r[team=guardian,tag=interact_fin] speed 10 1
execute if entity @a[team=guardian,tag=interact_fin] run effect give @p[team=soul,scores={state=0}] glowing 5 0

# 特殊机制
# 诅咒
execute if entity @s[tag=cursed_gray] as @r[team=soul,tag=interact_fin] run function main:state/3/event/cursed/soul
execute if entity @s[tag=cursed_gray] as @r[team=guardian,tag=interact_fin] run function main:state/3/event/cursed/guardian

tag @a remove interact_fin
kill @s