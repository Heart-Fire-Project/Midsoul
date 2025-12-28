# 回响
execute if score $echo data matches 3 run function main:lib/echo/03
execute if score $echo data matches 3 as @a[team=guardian,tag=interact_fin,scores={tick.skill=1..}] run scoreboard players remove @s tick.skill 70000

# 特殊机制
execute if entity @s[tag=cursed_gray] as @r[team=soul,tag=interact_fin] run function main:lib/ability/base/cursed/soul
execute if entity @s[tag=cursed_gray] as @r[team=guardian,tag=interact_fin] run function main:lib/ability/base/cursed/guardian