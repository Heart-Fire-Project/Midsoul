# 技能
execute as @a[team=soul,scores={tick.skill=-2370..-2350,skill=4}] run function main:state/3/ability/skill/004t
execute at @e[tag=S005] run particle portal ~ ~0.2 ~ 0.2 0.3 0.2 1 4 force @a[team=soul]
execute as @a[team=guardian,scores={skill=2},tag=skill_on] at @s run function main:state/3/ability/skill/102t
execute as @a[scores={skill.103=1..}] run function main:state/3/ability/skill/103t

# 天赋
effect give @a[scores={talent_1=3,state=0},team=soul,tag=talent_1_on] speed 1 0
effect give @a[scores={talent_2=3,state=0},team=soul,tag=talent_2_on] speed 1 0
execute at @a[scores={talent_1=4,state=0},tag=talent_1_on,team=guardian] run effect give @a[team=soul,distance=40..,scores={state=0}] glowing 1 0
execute at @a[scores={talent_2=4,state=0},tag=talent_2_on,team=guardian] run effect give @a[team=soul,distance=40..,scores={state=0}] glowing 1 0

# 宝物
execute at @e[tag=I5] positioned ^ ^1 ^2 as @a[team=guardian,distance=..3] at @s run function main:state/3/ability/item/05t
execute at @a[tag=item_on,scores={item=6,state=0}] run particle cloud ~ ~ ~ 0.3 0 0.3 0.1 20 force @a

# 杂项
execute as @a[tag=game_player] run function main:state/3/ability/detect/using_item
execute as @a[scores={detect.crossbow=1..}] at @s run function main:state/3/ability/detect/crossbow
execute as @a[scores={detect.drop=1..}] at @s run function main:state/3/ability/detect/drop
execute as @e[type=#arrows] run data modify entity @s pickup set value 0
execute as @e[type=#arrows] store result score @s temp run data get entity @s life
execute as @e[type=#arrows] if score @s temp matches 1..1099 run data modify entity @s life set value 1100s