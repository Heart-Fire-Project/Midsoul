$scoreboard players add @s[scores={talent_$(num)_tick=..-1},tag=talent_$(num)_on] talent_$(num)_tick 1

$execute if entity @a[team=soul,distance=..20] as @s[scores={talent_$(num)=4},team=protect,tag=talent_$(num)_on] run function main:state/3/talent/104_b
$execute as @s[scores={talent_$(num)=4},tag=talent_$(num)_on,team=protect] run effect give @a[team=soul,distance=40..] glowing 1 0