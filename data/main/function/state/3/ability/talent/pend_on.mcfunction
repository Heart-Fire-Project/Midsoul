$scoreboard players operation @s[scores={tick.talent_$(num)=1..}] temp = $cooldown_speed setting
$scoreboard players operation @s[scores={tick.talent_$(num)=1..}] tick.talent_$(num) -= @s temp
$scoreboard players set @s[scores={tick.talent_$(num)=..0}] tick.talent_$(num) 0

$execute if entity @a[team=guardian,distance=..12] as @s[team=soul,scores={talent_$(num)=2,tick.talent_$(num)=0}] run function main:state/3/ability/talent/002
$execute if entity @a[scores={state=1},team=soul] run tag @s[scores={talent_$(num)=3},team=soul] add talent_$(num)_on
$execute as @a[team=soul,tag=T004,scores={talent_$(num)=4,tick.talent_$(num)=0,health=..19}] at @s run function main:state/3/ability/talent/004
$tag @s[team=soul,scores={talent_$(num)=5,detect.sneak=1..}] add talent_$(num)_on
$execute if entity @s[team=guardian,scores={talent_$(num)=4,tick.talent_$(num)=0}] run function main:state/3/ability/talent/104
$execute if entity @s[team=guardian,scores={talent_$(num)=5,tick.talent_$(num)=0}] run function main:state/3/ability/talent/105
$execute if entity @s[team=guardian,scores={talent_$(num)=7,tick.talent_$(num)=0,talent.107=..2}] if entity @e[tag=blue,tag=!T107] run function main:state/3/ability/talent/107