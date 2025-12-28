# 孩子们，我回来了
scoreboard players set @s state 0
tp @s ~ ~ ~
damage @s 10 out_of_world
playsound block.conduit.activate player @a 0 1000000 0 120000

# 刷新效果
function main:state/3/player/effect
effect give @s speed 7 4
scoreboard players set @s[scores={tick.invincible=..300}] tick.invincible 300

# 判定：灵魂解除垂死状态时
function main:lib/action/player/healed

# 受文本套组影响
execute unless score @s extra.text matches 1..3 run function main:lib/player/healed/0
execute if score @s extra.text matches 1 run function main:lib/player/healed/1
execute if score @s extra.text matches 2 run function main:lib/player/healed/2
execute if score @s extra.text matches 3 run function main:lib/player/healed/3

# 教程
advancement grant @s only main:tutorial/player/5