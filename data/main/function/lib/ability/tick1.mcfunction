# 技能
execute as @a[team=soul,scores={tick.skill=-23700..-23500,skill=4}] run function main:lib/ability/skill/004t
execute at @e[tag=S005] run particle portal ~ ~0.2 ~ 0.2 0.3 0.2 1 4 force @a[team=soul]
execute as @a[team=guardian,scores={skill=2},tag=skill_on] at @s run function main:lib/ability/skill/102t
execute as @a[scores={skill.103=1..},team=soul] at @s run function main:lib/ability/skill/103t
execute as @a[scores={skill.105s=1..}] at @s run function main:lib/ability/skill/105t
execute at @a[scores={skill=5},team=guardian,tag=skill_on] as @a[team=soul,distance=..4] at @s run function main:lib/event/mark/prepare {color:10693415,offset:2.25}

# 天赋
effect give @a[scores={talent_1=3,state=0},team=soul,tag=talent_1_on] speed 1 0
effect give @a[scores={talent_2=3,state=0},team=soul,tag=talent_2_on] speed 1 0
execute as @a[team=soul,tag=T004,scores={talent_1=4,tick.talent_1=0,health=..19}] at @s run function main:lib/ability/talent/004
execute as @a[team=soul,tag=T004,scores={talent_2=4,tick.talent_2=0,health=..19}] at @s run function main:lib/ability/talent/004
execute at @a[scores={talent_1=4,state=0},tag=talent_1_on,team=guardian] run effect give @a[team=soul,distance=40..,scores={state=0}] glowing 1 0
execute at @a[scores={talent_2=4,state=0},tag=talent_2_on,team=guardian] run effect give @a[team=soul,distance=40..,scores={state=0}] glowing 1 0

# 宝物
execute at @e[tag=I5] positioned ^ ^1 ^2 as @a[team=guardian,distance=..3] at @s run function main:lib/ability/item/05t

# 杂项
execute as @a[tag=game_player] run function main:lib/ability/detect/using_item
execute as @a[scores={detect.crossbow=1..}] at @s run function main:lib/ability/detect/crossbow
execute as @a[scores={detect.drop=1..}] at @s run function main:lib/ability/detect/drop
execute as @e[type=#arrows] run data merge entity @s {pickup:0}
execute as @e[type=#arrows] store result score @s temp run data get entity @s life
execute as @e[type=#arrows] if score @s temp matches 1..1099 run data merge entity @s {life:1100s}