# 通用效果
scoreboard players add @a[distance=..1,tag=opening,scores={countdown=801..}] stat_temp_open 1
particle happy_villager ~ ~0.2 ~ 0.2 0.1 0.2 5 15 force @a
playsound block.shulker_box.open ambient @a ~ ~ ~
kill @s

# 守卫者效果
effect give @a[team=protect,distance=..1,tag=opening,scores={countdown=801..}] speed 7 1
execute if entity @a[team=protect,distance=..1,tag=opening,scores={countdown=801..}] run effect give @a[limit=1,sort=furthest,team=soul,scores={state=0}] glowing 3 1
execute if entity @s[tag=cursed] run effect give @a[team=soul] glowing 3 0

# 灵魂效果
execute if entity @a[team=soul,distance=..1,tag=opening,scores={countdown=801..,item=1..}] run effect give @a[limit=1,sort=furthest,team=protect] glowing 7 0
execute if entity @s[tag=cursed] run effect give @a[team=soul,distance=..1,tag=opening,scores={countdown=801..,state=0}] glowing 3 0
execute if entity @s[tag=cursed] run effect give @a[team=soul,distance=..1,tag=opening,scores={countdown=801..,state=0}] slowness 3 1
execute if entity @a[team=soul,distance=..1,tag=opening,scores={countdown=801..,item=0}] run function base:random {storage:"data",max:"6",min:"1"}
execute as @a[team=soul,distance=..1,tag=opening,scores={countdown=801..,item=0}] run scoreboard players operation @s item = $random data