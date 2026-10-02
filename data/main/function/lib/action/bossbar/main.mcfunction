# 气息条判定系统
# 0 | 重置对象
tag @s add pending

# 1 | 基础数值
scoreboard players set @s temp 2400
scoreboard players set @s temp2 1200
scoreboard players operation $heed temp2 = @s temp
scoreboard players operation $warn temp2 = @s temp2

# 2 | 自身可侦测范围 > 直接乘算

# 3 | 自身可侦测范围 > 加算
execute as @s[team=soul,scores={talent_1=8},tag=interact_purple,tag=interacting] run function main:lib/action/bossbar/add {type:"both",value:"800"}
execute as @s[team=soul,scores={talent_2=8},tag=interact_purple,tag=interacting] run function main:lib/action/bossbar/add {type:"both",value:"800"}

# 4 | 自身可侦测范围 > 最终乘算

# s | 以所有敌方计算自身实际生效范围
execute as @s[team=guardian] as @a[team=soul] run function main:lib/action/bossbar/sub
execute as @s[team=soul] as @a[team=guardian] run function main:lib/action/bossbar/sub

# 9 | 结束
tag @a remove pending