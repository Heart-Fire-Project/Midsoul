# 被击倒
tag @s remove soul_down
tp @s @e[limit=1,tag=death_mark]
kill @e[tag=death_mark]
scoreboard players set @s state 1

# 统计数据
scoreboard players add @s temp.dying 1
scoreboard players add @p[tag=hit_soul] temp.down 1
tag @a remove hit_soul

# 设置时间
scoreboard players set @s[scores={temp.dying=1}] countdown 12000
scoreboard players set @s[scores={temp.dying=2}] countdown 8000
scoreboard players set @s[scores={temp.dying=3..}] countdown 4000

# 取消正在进行的所有能力，并重设冷却
execute as @s[tag=skill_on] run function main:state/3/ability/skill/reset
execute as @s[tag=talent_1_on] run function main:state/3/ability/talent/reset {num:"1"}
execute as @s[tag=talent_2_on] run function main:state/3/ability/talent/reset {num:"2"}
tag @s remove skill_on
tag @s remove talent_1_on
tag @s remove talent_2_on
tag @s remove item_on

# 刷新效果
function main:state/3/player/effect

# 受文本套组影响
execute unless score @s extra.text matches 1..2 run function main:lib/player/down/0
execute if score @s extra.text matches 1 run function main:lib/player/down/1
execute if score @s extra.text matches 2 run function main:lib/player/down/2

# 灯噔咚
function main:state/3/event/summon/gold
playsound block.conduit.deactivate player @a[team=!admin] 0 1000000 0 1000000

# 最终防线？
scoreboard players reset $undying data
execute as @a[team=soul,scores={state=0}] run scoreboard players add $undying data 1
execute if score $undying data matches 1 run playsound block.bell.use player @a[team=!admin] 0 1000000 0 1000000

# 教程
advancement grant @s only main:tutorial/attack/3