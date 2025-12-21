# 被击倒
scoreboard players operation $value temp = @s entity_id
execute as @e[tag=death_mark] if score @s entity_id = $value temp run tag @s add target
tp @s @e[limit=1,tag=target]
execute unless entity @e[tag=target] run tp @s @e[limit=1,tag=death_mark]
kill @n[tag=death_mark]
tag @s remove soul_down
scoreboard players set @s state 1

# 统计数据
scoreboard players add @s temp.dying 1

# 实时表现分
scoreboard players add @p[tag=hit_soul] temp.down 1
tellraw @p[tag=hit_soul,scores={setting.instant_rating=1}] [{text:" +35 | ",color:"#E47227"},{translate:"ms.rating.down",fallback:"击倒灵魂"}]
tellraw @p[tag=hit_soul,scores={setting.instant_rating=1,temp.down=2}] [{text:" +25 | ",color:"#E47227"},{translate:"ms.rating.down",fallback:"击倒灵魂"}," ×2"]
tellraw @p[tag=hit_soul,scores={setting.instant_rating=1,temp.down=4}] [{text:" +40 | ",color:"#E47227"},{translate:"ms.rating.down",fallback:"击倒灵魂"}," ×4"]
tag @p[tag=hit_soul] remove hit_soul

# 设置时间
scoreboard players set @s[scores={temp.dying=1}] tick.general 120000
scoreboard players set @s[scores={temp.dying=2}] tick.general 80000
scoreboard players set @s[scores={temp.dying=3..}] tick.general 40000

# 取消正在进行的所有能力，并重设冷却
execute as @s[tag=skill_on] run function main:state/3/ability/skill/reset
execute as @s[tag=talent_1_on] run function main:state/3/ability/talent/reset {num:"1"}
execute as @s[tag=talent_2_on] run function main:state/3/ability/talent/reset {num:"2"}
tag @s remove skill_on
tag @s remove talent_1_on
tag @s remove talent_2_on
tag @s remove item_on

# 判定：灵魂被击倒时
execute as @a[team=soul,scores={talent_1=3,state=0}] run function main:state/3/ability/talent/003
execute as @a[team=soul,scores={talent_2=3,state=0}] run function main:state/3/ability/talent/003

# 刷新效果
function main:state/3/player/effect

# 受文本套组影响
execute unless score @s extra.text matches 1..3 run function main:lib/player/dying/0
execute if score @s extra.text matches 1 run function main:lib/player/dying/1
execute if score @s extra.text matches 2 run function main:lib/player/dying/2
execute if score @s extra.text matches 3 run function main:lib/player/dying/3

# 灯噔咚
function main:state/3/event/summon/gold
playsound block.conduit.deactivate player @a 0 1000000 0 120000

# 最终防线？
scoreboard players reset $undying data
execute as @a[team=soul,scores={state=0}] run scoreboard players add $undying data 1
execute if score $undying data matches 1 run playsound block.bell.use player @a 0 1000000 0 120000

# 教程
advancement grant @s only main:tutorial/player/3