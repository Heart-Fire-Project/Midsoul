# 用于能力效果 - 点亮灵魂之灯
execute if data storage ms:mode {logic:"1"} run scoreboard players add @s temp.heal 1
execute if data storage ms:mode {logic:"1"} as @s[scores={setting.instant_rating=1}] run function main:lib/rating/1/soul/heal
$execute if data storage ms:mode {logic:"1"} as @e[tag=gold,limit=$(limit),sort=$(sort)] at @s run function main:state/3/interaction/gold