# 正常阶段
execute unless score $sub_state data matches 1 run function game:state/3/normal_bossbar

# 特殊阶段
execute if score $sub_state data matches 1 run function game:state/3/special_bossbar