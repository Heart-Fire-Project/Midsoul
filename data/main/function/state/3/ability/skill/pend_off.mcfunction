scoreboard players add @s[scores={tick.skill=..-1}] tick.skill 100

execute as @s[scores={tick.skill=0..,skill=1},team=soul] run function main:state/3/ability/skill/001f
execute as @s[scores={tick.skill=0..,skill=2},team=soul] run function main:state/3/ability/skill/002f
execute as @s[scores={tick.skill=0..,skill=4},team=soul] run function main:state/3/ability/skill/004f
execute as @s[scores={tick.skill=0..,skill=1},team=guardian] run function main:state/3/ability/skill/101f
execute as @s[scores={tick.skill=0..,skill=2},team=guardian] run function main:state/3/ability/skill/102f
execute as @s[scores={tick.skill=0..,skill=3},team=guardian] run function main:state/3/ability/skill/103f
execute as @s[scores={tick.skill=0..,skill=4},team=guardian] run function main:state/3/ability/skill/104f
execute as @s[scores={tick.skill=0..,skill=5},team=guardian] run function main:state/3/ability/skill/105f