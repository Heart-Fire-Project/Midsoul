# 被标记者效果
execute as @a[tag=echo_target] at @s run function main:lib/event/mark/prepare {color:11479471,offset:2.25}
effect give @a[tag=echo_target] glowing 1 0 true

# 未被标记者效果
scoreboard players set @a[team=soul,tag=!echo_target,scores={tick.invincible=..20}] tick.invincible 21