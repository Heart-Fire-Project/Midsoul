# 强制擦刀状态，就是击中后再去掉标签和数据
tag @s add striked
function main:state/3/player/guardian/hit
tag @s remove striked