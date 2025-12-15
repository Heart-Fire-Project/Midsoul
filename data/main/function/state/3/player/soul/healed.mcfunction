# 孩子们，我回来了
scoreboard players set @s state 0
tp @s ~ ~ ~
damage @s 10 out_of_world
playsound block.conduit.activate player @a 0 1000000 0 120000

# 刷新效果
function main:state/3/player/effect
effect give @s speed 7 4
scoreboard players set @s tick.invincible 300

# 判定：灵魂解除垂死状态时
execute as @a[team=soul,scores={talent_1=3,state=0}] run function main:state/3/ability/talent/003f
execute as @a[team=soul,scores={talent_2=3,state=0}] run function main:state/3/ability/talent/003f
execute as @a[team=guardian,scores={talent_1=2}] at @s run function main:state/3/ability/talent/102
execute as @a[team=guardian,scores={talent_2=2}] at @s run function main:state/3/ability/talent/102

# 受文本套组影响
execute unless score @s extra.text matches 1..3 run function main:lib/player/healed/0
execute if score @s extra.text matches 1 run function main:lib/player/healed/1
execute if score @s extra.text matches 2 run function main:lib/player/healed/2
execute if score @s extra.text matches 3 run function main:lib/player/healed/3

# 教程
advancement grant @s only main:tutorial/player/5