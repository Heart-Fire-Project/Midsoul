tag @r[distance=..0.7,tag=interact_gray,scores={tick.general=1000..}] add interact_fin

# 完成灵魂宝物盒开启
particle dust{color:[1,1,1],scale:1} ~ ~0.2 ~ 0.2 0.1 0.2 0 7 force @a
playsound block.shulker_box.open player @a

# 实时表现分
scoreboard players add @a[tag=interact_fin] temp.open 1
execute as @a[tag=interact_fin,scores={setting.instant_rating=1},team=guardian] run function main:lib/rating/1/open

# 灵魂效果 | 不包含宝物同步
tag @e[team=soul,distance=..0.7,tag=interact_gray,scores={tick.general=1000..}] add target
execute if entity @p[tag=target,scores={item=1..}] run effect give @p[team=guardian] glowing 3 0
effect give @p[tag=target,scores={item=1..}] regeneration 3 2
advancement grant @p[tag=target,scores={item=0}] only main:tutorial/mechanic/2
data modify storage ms:temp min set value 1
execute store result storage ms:temp max int 1 run scoreboard players get $item_max data
function base:random with storage ms:temp

# 守卫效果
effect give @r[team=guardian,tag=interact_fin] speed 10 1
execute if entity @a[team=guardian,tag=interact_fin] run effect give @p[team=soul,scores={state=0}] glowing 5 0

# 判定：开启灵魂宝物盒时
function main:lib/action/interact/gray

# 灵魂最终同步宝物结果
execute as @p[tag=target,scores={item=0}] run scoreboard players operation @s item = $random temp2

tag @a remove interact_fin
tag @a remove target
kill @s