# 把时间输出格式直接扔进存储里
data merge storage ms:temp {A:"0",B:"",C:"",D:"",E:""}
data merge storage ms:string {A:"",B:":",C:"",D:".",E:""}
$function base:caculate/time {unit:"min",tick:"@s",source:"$(source)"}

execute if score $min temp2 matches ..9 store result storage ms:temp B int 1 run scoreboard players get $min temp2
execute if score $min temp2 matches ..9 run function base:craft_string with storage ms:temp
execute if score $min temp2 matches ..9 run data modify storage ms:string A set from storage r7s:base string
execute if score $min temp2 matches 10.. store result storage ms:string A int 1 run scoreboard players get $min temp2

execute if score $sec temp2 matches ..9 store result storage ms:temp B int 1 run scoreboard players get $sec temp2
execute if score $sec temp2 matches ..9 run function base:craft_string with storage ms:temp
execute if score $sec temp2 matches ..9 run data modify storage ms:string C set from storage r7s:base string
execute if score $sec temp2 matches 10.. store result storage ms:string C int 1 run scoreboard players get $sec temp2

execute if score $ms temp2 matches ..9 store result storage ms:temp B int 1 run scoreboard players get $ms temp2
execute if score $ms temp2 matches ..9 run function base:craft_string with storage ms:temp
execute if score $ms temp2 matches ..9 run data modify storage ms:string E set from storage r7s:base string
execute if score $ms temp2 matches 10.. store result storage ms:string E int 1 run scoreboard players get $ms temp2

function base:craft_string with storage ms:string
data modify storage ms:string result set from storage r7s:base string