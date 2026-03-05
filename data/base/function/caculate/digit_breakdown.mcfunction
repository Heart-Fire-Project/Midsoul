# 将一个数字拆分为数位 | 最大支持 5 位数，需添加可比照办理
# 需要参数：value source (计分板记录值)
# 需要前置：caculate/tenths
# 输出结果：$digit_1 $digit_2 $digit_3 $digit_4 $digit_5

$scoreboard players operation $value temp = $(value) $(source)
function base:caculate/tenths {value:"$value",source:"temp"}
scoreboard players operation $digit_1 temp2 = $behind temp2
function base:caculate/tenths {value:"$front",source:"temp2"}
scoreboard players operation $digit_2 temp2 = $behind temp2
function base:caculate/tenths {value:"$front",source:"temp2"}
scoreboard players operation $digit_3 temp2 = $behind temp2
function base:caculate/tenths {value:"$front",source:"temp2"}
scoreboard players operation $digit_4 temp2 = $behind temp2
scoreboard players operation $digit_5 temp2 = $front temp2