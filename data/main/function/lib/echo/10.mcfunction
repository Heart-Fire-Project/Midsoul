# 先丢虚空以避免死亡动画
tp @e[tag=E10] 0 -100 0
kill @e[tag=E10]
execute as @a[team=guardian,scores={state=0}] at @s unless entity @a[team=soul,distance=..8] run function main:lib/echo/10a
execute as @a[team=guardian,scores={state=0}] at @s if entity @a[team=soul,distance=..8] run effect give @s glowing 4 0 true

scoreboard players set $echo tick.general 4