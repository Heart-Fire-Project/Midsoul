# 持续性效果
execute if score $echo data matches 1 if score $echo tick.general matches 0.. as @a[team=soul] run function main:lib/echo/01t
execute if score $echo data matches 4 as @a[team=soul] run function main:lib/echo/04t