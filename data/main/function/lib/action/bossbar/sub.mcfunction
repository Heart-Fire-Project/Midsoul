# m | 同步当前得数
scoreboard players operation @s temp = @p[tag=pending] temp
scoreboard players operation @s temp2 = @p[tag=pending] temp2

# 5 | 自身被侦测范围 > 直接乘算
execute as @s[team=guardian,scores={talent_1=1}] run function main:lib/action/bossbar/percent {type:"both",value:"-40",phase:"direct"}
execute as @s[team=guardian,scores={talent_2=1}] run function main:lib/action/bossbar/percent {type:"both",value:"-40",phase:"direct"}

# 6 | 自身被侦测范围 > 加算

# 7 | 自身被侦测范围 > 最终乘算
execute as @s[team=soul,scores={talent_1=5},tag=sneaking] run function main:lib/action/bossbar/percent {type:"both",value:"-100",phase:"final"}
execute as @s[team=soul,scores={talent_2=5},tag=sneaking] run function main:lib/action/bossbar/percent {type:"both",value:"-100",phase:"final"}

# 8 | 导入最终结果并进行判定
execute store result storage ms:temp heed double 0.01 run scoreboard players get @s temp
execute store result storage ms:temp warn double 0.01 run scoreboard players get @s temp2
execute at @s run function main:lib/action/bossbar/pend with storage ms:temp