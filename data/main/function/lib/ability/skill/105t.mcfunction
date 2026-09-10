# 粒子与无法出伤
execute at @a[team=soul,scores={state=0},distance=..4,tag=!invisible] run function main:lib/event/mark/prepare {color:10693415,offset:2.25}
scoreboard players set @s[scores={tick.disable=..2}] tick.disable 2