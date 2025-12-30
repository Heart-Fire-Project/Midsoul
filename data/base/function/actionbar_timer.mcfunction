# 显示动作栏进度条
# 需要参数：max(进度最大值) current(进度当前值) color(进度条颜色)
# 前置条件：caculate/time craft_string

# 获取信息
$scoreboard players operation $current temp = @s $(current)
$scoreboard players operation $time temp = @s $(max)
scoreboard players operation $time temp -= $current temp

# 时间部分
scoreboard players add $current temp 5
function base:caculate/time {unit:"sec",tick:"$time",source:"temp"}
execute store result storage r7s:temp tenth int 0.1 run scoreboard players get $ms temp2
execute if score $sec temp2 matches 10.. store result storage r7s:temp sec int 1 run scoreboard players get $sec temp2
data merge storage r7s:temp {A:"0",B:"",C:"",D:"",E:""}
execute if score $sec temp2 matches ..9 store result storage r7s:temp B int 1 run scoreboard players get $sec temp2
execute if score $sec temp2 matches ..9 run function base:craft_string with storage r7s:temp
execute if score $sec temp2 matches ..9 run data modify storage r7s:temp sec set from storage r7s:base string

# 条状部分 | 细致分类
scoreboard players operation $bar temp = $current temp
scoreboard players operation $bar temp *= #24 data
$scoreboard players operation $bar temp /= @s $(max)
execute if score $bar temp matches 13.. run scoreboard players remove $bar temp 12
execute if score $bar temp matches 7.. run scoreboard players remove $bar temp 6
execute if score $bar temp matches 0 run data merge storage r7s:temp {front:""}
execute if score $bar temp matches 1 run data merge storage r7s:temp {front:"|"}
execute if score $bar temp matches 2 run data merge storage r7s:temp {front:"||"}
execute if score $bar temp matches 3 run data merge storage r7s:temp {front:"|||"}
execute if score $bar temp matches 4 run data merge storage r7s:temp {front:"||||"}
execute if score $bar temp matches 5 run data merge storage r7s:temp {front:"|||||"}
execute if score $bar temp matches 6 run data merge storage r7s:temp {front:"||||||"}
execute if score $bar temp matches 0 run data merge storage r7s:temp {behind:"||||||"}
execute if score $bar temp matches 1 run data merge storage r7s:temp {behind:"|||||"}
execute if score $bar temp matches 2 run data merge storage r7s:temp {behind:"||||"}
execute if score $bar temp matches 3 run data merge storage r7s:temp {behind:"|||"}
execute if score $bar temp matches 4 run data merge storage r7s:temp {behind:"||"}
execute if score $bar temp matches 5 run data merge storage r7s:temp {behind:"|"}
execute if score $bar temp matches 6 run data merge storage r7s:temp {behind:""}

# 显示部分 | 粗略分类
scoreboard players operation $bar temp = $current temp
scoreboard players operation $bar temp *= #24 data
$scoreboard players operation $bar temp /= @s $(max)
$execute if score $bar temp matches 0..6 run title @s actionbar [{text:"",color:"white"},{storage:"r7s:temp",nbt:"front",color:"$(color)"},{storage:"r7s:temp",nbt:"behind"},"|||||||||||||||||| ",{storage:"r7s:temp",nbt:"sec"},".",{storage:"r7s:temp",nbt:"tenth"}," ||||||||||||||||||",{storage:"r7s:temp",nbt:"behind"},{storage:"r7s:temp",nbt:"front",color:"$(color)"}]
$execute if score $bar temp matches 7..12 run title @s actionbar [{text:"",color:"white"},{text:"||||||",color:"$(color)"},{storage:"r7s:temp",nbt:"front",color:"$(color)"},{storage:"r7s:temp",nbt:"behind"},"|||||||||||| ",{storage:"r7s:temp",nbt:"sec"},".",{storage:"r7s:temp",nbt:"tenth"}," ||||||||||||",{storage:"r7s:temp",nbt:"behind"},{storage:"r7s:temp",nbt:"front",color:"$(color)"},{text:"||||||",color:"$(color)"}]
$execute if score $bar temp matches 13..18 run title @s actionbar [{text:"",color:"white"},{text:"||||||||||||",color:"$(color)"},{storage:"r7s:temp",nbt:"front",color:"$(color)"},{storage:"r7s:temp",nbt:"behind"},"|||||| ",{storage:"r7s:temp",nbt:"sec"},".",{storage:"r7s:temp",nbt:"tenth"}," ||||||",{storage:"r7s:temp",nbt:"behind"},{storage:"r7s:temp",nbt:"front",color:"$(color)"},{text:"||||||||||||",color:"$(color)"}]
$execute if score $bar temp matches 19..24 run title @s actionbar [{text:"",color:"white"},{text:"||||||||||||||||||",color:"$(color)"},{storage:"r7s:temp",nbt:"front",color:"$(color)"},{storage:"r7s:temp",nbt:"behind"}," ",{storage:"r7s:temp",nbt:"sec"},".",{storage:"r7s:temp",nbt:"tenth"}," ",{storage:"r7s:temp",nbt:"behind"},{storage:"r7s:temp",nbt:"front",color:"$(color)"},{text:"||||||||||||||||||",color:"$(color)"}]