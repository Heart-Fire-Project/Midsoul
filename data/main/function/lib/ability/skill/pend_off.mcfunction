scoreboard players add @s[scores={tick.skill=..-1}] tick.skill 100

execute as @s[team=soul,scores={tick.skill=0..,skill=1}] run function main:lib/ability/skill/001f
execute as @s[team=soul,scores={tick.skill=0..,skill=2}] run function main:lib/ability/skill/002f
execute as @s[team=soul,scores={tick.skill=0..,skill=4}] run function main:lib/ability/skill/004f
execute as @s[team=guardian,scores={tick.skill=0..,skill=1}] run function main:lib/ability/skill/101f
execute as @s[team=guardian,scores={tick.skill=0..,skill=2}] run function main:lib/ability/skill/102f
execute as @s[team=guardian,scores={tick.skill=0..,skill=3}] run function main:lib/ability/skill/103f
execute as @s[team=guardian,scores={tick.skill=0..,skill=4}] run function main:lib/ability/skill/104f
execute as @s[team=guardian,scores={tick.skill=0..,skill=5}] run function main:lib/ability/skill/105f