$tag @s[team=soul,scores={talent_$(num)=5},tag=!sneaking] remove talent_$(num)_on
$tag @s[team=soul,scores={talent_$(num)=7,tick.general=..0}] remove talent_$(num)_on
$execute as @s[team=soul,scores={talent_$(num)=8}] unless entity @s[tag=interact_purple,tag=interacting] run tag @s remove talent_$(num)_on
$execute as @s[team=soul,scores={talent_$(num)=9}] unless entity @s[tag=interact_gold,tag=interacting] run function main:lib/ability/talent/009f {num:"$(num)"}
$execute if entity @a[team=soul,distance=..8,scores={state=0}] as @s[scores={talent_$(num)=4},team=guardian] run function main:lib/ability/talent/104f