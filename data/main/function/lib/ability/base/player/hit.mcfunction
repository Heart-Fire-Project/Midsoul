# 用于能力效果 - 视作一次击中
execute if data storage ms:mode {logic:"1"} run scoreboard players add @s temp.hit 1
execute if data storage ms:mode {logic:"1"} as @s[scores={setting.instant_rating=1}] run function main:lib/rating/1/guardian/hit