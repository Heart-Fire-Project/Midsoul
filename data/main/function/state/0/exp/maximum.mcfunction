# 基础经验 300 点
execute if score @s temp2 matches 0 run scoreboard players set @s exp.max 300

# 刷新等级结算值
execute if score @s temp matches 1.. run scoreboard players add @s temp2 1
execute if score @s temp matches 1.. run scoreboard players remove @s temp 1

# 每一级所需经验量为上一级所需经验量+当前等级数*[(100+当前等级数)%]
scoreboard players operation $exp_rise temp = @s temp2
scoreboard players set $exp_multiple temp 100
scoreboard players operation $exp_multiple temp += @s temp2
scoreboard players operation $exp_rise temp *= $exp_multiple temp
scoreboard players operation $exp_rise temp /= #100 data
scoreboard players operation @s exp.max += $exp_rise temp

# 如果还没完，则再来一次
execute if score @s temp matches 1.. run function main:state/0/exp/maximum