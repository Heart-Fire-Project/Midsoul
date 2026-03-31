# 持续性效果
execute if score $echo data matches 1 if score $echo tick.general matches 0.. run scoreboard players remove @a[team=soul,scores={state=1,tick.general=1..}] tick.general 25
execute if score $echo data matches 1 if score $echo tick.general matches 0.. as @a[team=soul] run function main:lib/echo/01t
execute if score $echo data matches 4 run function main:lib/echo/04t
execute if score $echo data matches 10 as @e[tag=E10] run function main:lib/echo/10t