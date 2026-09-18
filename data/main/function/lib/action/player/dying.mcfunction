# 能力
execute as @a[team=soul,scores={talent_1=3,state=0}] run function main:lib/ability/talent/003
execute as @a[team=soul,scores={talent_2=3,state=0}] run function main:lib/ability/talent/003
scoreboard players reset @s[team=soul,scores={skill=7}] skill.007
scoreboard players operation $value temp = @s entity_id
execute as @a[team=soul,scores={skill=7},tag=skill_on] if score @s skill.007 = $value temp run function main:lib/ability/skill/007f