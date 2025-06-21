tag @a[distance=..0.7,tag=gray_interact,scores={countdown=1000..}] add interact_fin

# 完成灵魂宝物盒开启
scoreboard players add @a[tag=interact_fin] temp.open 1
particle dust{color:[1,1,1],scale:1} ~ ~0.2 ~ 0.2 0.1 0.2 0 7 force @a
playsound block.shulker_box.open player @a

# 灵魂效果
function base:random {max:"6",min:"1"}
execute if score $echo data matches 4 run function main:state/3/echo/04
execute if entity @a[team=soul,distance=..0.7,tag=gray_interact,scores={countdown=1000..,item=1..}] run effect give @p[team=guardian] glowing 7 0
execute as @r[team=soul,distance=..0.7,tag=gray_interact,scores={countdown=1000..,item=0}] run scoreboard players operation @s item = $random temp2

# 守卫效果
effect give @r[team=guardian,tag=interact_fin] speed 10 1
execute if entity @a[team=guardian,tag=interact_fin] run effect give @p[team=soul,scores={state=0}] glowing 7 0

# 判定：开启灵魂宝物盒时
execute if score $echo data matches 4 as @a[team=guardian,tag=interact_fin,scores={skill_tick=1..}] run scoreboard players remove @s skill_tick 4000

# 特殊机制
# 诅咒
execute if entity @s[tag=cursed_gray] as @r[team=soul,tag=interact_fin] run function main:state/3/event/cursed/soul
execute if entity @s[tag=cursed_gray] as @r[team=guardian,tag=interact_fin] run function main:state/3/event/cursed/guardian

tag @a remove interact_fin
kill @s