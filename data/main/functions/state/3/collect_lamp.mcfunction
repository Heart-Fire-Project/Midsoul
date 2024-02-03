# 点亮灵魂之灯
scoreboard players add @a[distance=..1,tag=healing,scores={countdown=1001..}] stat_temp_heal 1
particle wax_on ~ ~0.5 ~ 0.25 0.3 0.25 5 32 force @a
playsound item.trident.return ambient @a ~ ~ ~
kill @s

# 先治疗那个快死了的
scoreboard players set $heal temp 601
execute as @a[team=soul,scores={state=1}] run scoreboard players operation $heal temp < @s countdown
execute as @a[team=soul,scores={state=1}] if score @s countdown = $heal temp run tag @s add heal
execute at @s as @r[tag=heal] run function main:state/3/attack/heal
tag @a remove heal

# 天赋
execute as @a[team=protect,scores={talent_1=2,talent_1_tick=..0}] run function main:state/3/talent/102
execute as @a[team=protect,scores={talent_2=2,talent_2_tick=..0}] run function main:state/3/talent/102