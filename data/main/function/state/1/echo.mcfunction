# 按照设定生成可选择目标
execute if data storage ms:echo {01:true} run function base:spawn_selector {tag:"echo_selector",score:"01"}
execute if data storage ms:echo {02:true} run function base:spawn_selector {tag:"echo_selector",score:"02"}
execute if data storage ms:echo {03:true} run function base:spawn_selector {tag:"echo_selector",score:"03"}
execute if data storage ms:echo {04:true} run function base:spawn_selector {tag:"echo_selector",score:"04"}
execute if data storage ms:echo {05:true} run function base:spawn_selector {tag:"echo_selector",score:"05"}
execute if data storage ms:echo {06:true} run function base:spawn_selector {tag:"echo_selector",score:"06"}
execute if data storage ms:echo {07:true} run function base:spawn_selector {tag:"echo_selector",score:"07"}
execute if data storage ms:echo {08:true} run function base:spawn_selector {tag:"echo_selector",score:"08"}
execute if data storage ms:echo {09:true} run function base:spawn_selector {tag:"echo_selector",score:"09"}

# 选择其中的一个 | 若玩家把所有回响都禁用则无目标，也即不会选择
scoreboard players operation $echo data = @e[tag=echo_selector,limit=1,sort=random] temp

# 都杀了
kill @e[tag=echo_selector]