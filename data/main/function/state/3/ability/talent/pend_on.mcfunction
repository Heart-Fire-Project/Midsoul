$scoreboard players operation @s[scores={talent_$(num)_tick=1..}] temp -= $cooldown_speed setting
$scoreboard players operation @s[scores={talent_$(num)_tick=1..}] talent_$(num)_tick -= @s temp
$scoreboard players set @s[scores={talent_$(num)_tick=..0}] talent_$(num)_tick 0

$execute if entity @a[team=guardian,distance=..12] as @s[team=soul,scores={talent_$(num)=2,talent_$(num)_tick=0}] run function main:state/3/ability/talent/002
$execute if entity @a[scores={state=1},team=soul] run tag @s[scores={talent_$(num)=3},team=soul] add talent_$(num)_on
$tag @s[team=soul,scores={talent_$(num)=5,sneak_time=1..}] add talent_$(num)_on
$execute if entity @s[team=guardian,scores={talent_$(num)=4,talent_$(num)_tick=0}] run function main:state/3/ability/talent/104
$execute if entity @s[team=guardian,scores={talent_$(num)=5,talent_$(num)_tick=0}] run function main:state/3/ability/talent/105
$execute if entity @s[team=guardian,scores={talent_$(num)=7,talent_$(num)_tick=0,talent_107=..2}] if entity @e[tag=blue,tag=!T107] run function main:state/3/ability/talent/107