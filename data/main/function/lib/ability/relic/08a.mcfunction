# 随机角度与距离，然后转入
execute store result storage ms:temp theta int 1 run random value -180..180
execute store result storage ms:temp distance int 0.1 run random value 0..35
function main:lib/ability/relic/08b with storage ms:temp