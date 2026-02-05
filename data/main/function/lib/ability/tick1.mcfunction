# 技能
execute as @a[team=soul,scores={skill=4,tick.skill=-23700..-23500}] run function main:lib/ability/skill/004t
execute at @e[tag=S005] run particle portal ~ ~0.2 ~ 0 0 0 0.1 1 force @a[team=!guardian]
execute as @a[team=guardian,scores={skill=2},tag=skill_on] at @s run function main:lib/ability/skill/102t
execute as @a[team=soul,scores={skill.103=1..}] at @s run function main:lib/ability/skill/103t
execute as @a[team=guardian,scores={skill=5},tag=skill_on] at @s run function main:lib/ability/skill/105t

# 天赋
effect give @a[team=soul,scores={talent_1=3,state=0},tag=talent_1_on] speed 1 0
effect give @a[team=soul,scores={talent_2=3,state=0},tag=talent_2_on] speed 1 0
execute if entity @a[team=guardian,scores={talent_1=4},tag=talent_1_on] at @a[team=soul,scores={state=0}] unless entity @a[team=guardian,distance=..40] run effect give @s glowing 1 0
execute if entity @a[team=guardian,scores={talent_2=4},tag=talent_2_on] at @a[team=soul,scores={state=0}] unless entity @a[team=guardian,distance=..40] run effect give @s glowing 1 0

# 宝物
execute at @e[tag=R5] positioned ^ ^1 ^2 as @a[team=guardian,distance=..3] at @s run function main:lib/ability/item/05t

# 杂项
execute as @a[tag=game_player] run function main:lib/ability/detect/using_item
execute as @a[scores={detect.crossbow=1..}] at @s run function main:lib/ability/detect/crossbow
execute as @a[scores={detect.drop=1..}] at @s run function main:lib/ability/detect/drop
execute as @e[type=#arrows] run data merge entity @s {pickup:0}
execute as @e[type=#arrows] store result score @s temp run data get entity @s life
execute as @e[type=#arrows] if score @s temp matches 1..1099 run data merge entity @s {life:1100s}