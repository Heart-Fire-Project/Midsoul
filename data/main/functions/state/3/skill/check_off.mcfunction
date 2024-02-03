scoreboard players add @s[scores={skill_tick=..-1},tag=skill_on] skill_tick 1

execute as @s[scores={skill_tick=0,skill=1},tag=skill_on,team=soul] run function main:state/3/skill/001s
execute as @s[scores={skill_tick=0,skill=2},tag=skill_on,team=soul] run function main:state/3/skill/002s
execute as @s[scores={skill_tick=0,skill=3},tag=skill_on,team=soul] run function main:state/3/skill/003s
execute as @s[scores={skill_tick=0,skill=4},tag=skill_on,team=soul] run function main:state/3/skill/004s
execute as @s[scores={skill_tick=0,skill=1},tag=skill_on,team=protect] run function main:state/3/skill/101s
execute as @s[scores={skill_tick=0,skill=2},tag=skill_on,team=protect] run function main:state/3/skill/102s
execute as @s[scores={skill_tick=0,skill=3},tag=skill_on,team=protect] run function main:state/3/skill/103s
execute as @s[scores={skill_tick=..-1,skill=3},tag=skill_on,team=protect] run function main:state/3/skill/103b
execute as @s[scores={skill_tick=0,skill=5},tag=skill_on,team=protect] run function main:state/3/skill/105s