$scoreboard players operation @s[scores={talent_$(num)_tick=1..},tag=!talent_$(num)_on] talent_$(num)_tick -= $cooldown_speed data
$execute if score $mode temp matches 2 run scoreboard players operation @s[scores={talent_$(num)_tick=1..},tag=!talent_$(num)_on] talent_$(num)_tick -= $cooldown_speed data
$scoreboard players set @s[scores={talent_$(num)_tick=..0},tag=!talent_$(num)_on] talent_$(num)_tick 0

$execute if entity @a[team=protect,distance=..12] as @s[team=soul,scores={talent_$(num)=2,talent_$(num)_tick=0}] run function main:state/3/talent/002
$execute if entity @a[scores={state=1},team=soul] run effect give @s[scores={talent_$(num)=3},team=soul] speed 1 1
$execute as @s[team=protect,scores={talent_$(num)=4,talent_$(num)_tick=0}] run function main:state/3/talent/104_a
$execute as @s[team=protect,scores={talent_$(num)=5,talent_$(num)_tick=0}] run function main:state/3/talent/105
$execute as @s[team=protect,scores={talent_$(num)=7,talent_$(num)_tick=0,talent_107=..2}] run function main:state/3/talent/107

$tag @s[team=soul,scores={talent_$(num)=5}] remove talent_$(num)_on
$tag @s[team=soul,scores={talent_$(num)=5,sneak_time=1}] add talent_$(num)_on