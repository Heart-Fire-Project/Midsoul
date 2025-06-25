$scoreboard players add @s[scores={tick.talent_$(num)=..-1}] tick.talent_$(num) 10

$execute unless entity @a[scores={state=1},team=soul] run tag @s[scores={talent_$(num)=3},team=soul] remove talent_$(num)_on
$tag @s[team=soul,scores={talent_$(num)=5,detect.sneak=..0}] remove talent_$(num)_on
$execute if entity @a[team=soul,distance=..20,scores={state=0}] as @s[scores={talent_$(num)=4},team=guardian] run function main:state/3/ability/talent/104f