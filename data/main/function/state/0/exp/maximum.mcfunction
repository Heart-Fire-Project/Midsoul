# 基础经验 300 点
scoreboard players set @s[scores={temp2=0}] exp.max 300

# 刷新等级结算值
scoreboard players add @s[scores={temp=1..}] temp2 1
scoreboard players remove @s[scores={temp=1..}] temp 1

# 每一级所需经验量为上一级所需经验量+当前等级数*[(100+当前等级数)%]
scoreboard players operation $exp_rise temp = @s temp2
scoreboard players set $exp_multiple temp 100
scoreboard players operation $exp_multiple temp += @s temp2
scoreboard players operation $exp_rise temp *= $exp_multiple temp
scoreboard players operation $exp_rise temp /= #100 data
scoreboard players operation @s exp.max += $exp_rise temp

# 如果还没完，则再来一次
execute as @s[scores={temp=1..}] run function main:state/0/exp/maximum