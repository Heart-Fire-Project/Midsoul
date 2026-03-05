# 二分法逼近平方根
# 需要参数：$result(设置为 0) $sum(开根目标值) $step(计算次数，精度)
# 输出结果：$result(位于temp中)

# 下一个待测值
scoreboard players operation $test temp = $result temp
scoreboard players operation $test temp += $step temp
scoreboard players operation $square temp = $test temp
scoreboard players operation $square temp *= $test temp

# 判定是否越界
execute if score $square temp <= $sum temp run scoreboard players operation $result temp = $test temp

# 递归
scoreboard players operation $step temp /= #2 data
execute if score $step temp matches 1.. run function base:caculate/sqrt_step