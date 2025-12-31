# 出击 | 注意被强制擦刀的场合

# 进入擦刀状态
scoreboard players set @s tick.general 14000
scoreboard players set @s state 1
function main:state/3/player/effect

# 判定：进入擦刀状态时
function main:lib/action/player/hit

# 实时表现分
scoreboard players add @s[tag=rated_attack] temp.hit 1
execute as @s[tag=rated_attack,scores={setting.instant_rating=1}] run function main:lib/rating/1/guardian/hit

# 取消正在进行的所有能力，并重设冷却
execute as @s[tag=skill_on] run function main:lib/ability/skill/reset
execute as @s[tag=talent_1_on] run function main:lib/ability/talent/reset {num:"1"}
execute as @s[tag=talent_2_on] run function main:lib/ability/talent/reset {num:"2"}
tag @s remove skill_on
tag @s remove talent_1_on
tag @s remove talent_2_on

# 进度
execute if score @s tick.off_ground matches 40.. run advancement grant @s only main:hidden/3

# 教程
advancement grant @s[tag=!striked] only main:tutorial/player/2

# 去除有效攻击标签
tag @s remove rated_attack