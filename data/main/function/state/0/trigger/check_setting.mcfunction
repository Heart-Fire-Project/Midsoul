# 地图
execute as @s[scores={detect.interact=100}] run function debug:sub/select {type:"map",num:"0"}
execute as @s[scores={detect.interact=101}] run function debug:sub/select {type:"map",num:"1"}
execute as @s[scores={detect.interact=102}] run function debug:sub/select {type:"map",num:"2"}
execute as @s[scores={detect.interact=103}] run function debug:sub/select {type:"map",num:"3"}
execute as @s[scores={detect.interact=104}] run function debug:sub/select {type:"map",num:"4"}
execute as @s[scores={detect.interact=105}] run function debug:sub/select {type:"map",num:"5"}
execute as @s[scores={detect.interact=106}] run function debug:sub/select {type:"map",num:"6"}

# 模式
execute as @s[scores={detect.interact=201}] run function debug:sub/select {type:"mode",num:"1"}
execute as @s[scores={detect.interact=202}] run function debug:sub/select {type:"mode",num:"2"}

# 回响概率
execute as @s[scores={detect.interact=301}] run function debug:sub/chance_add {type:"echo"}
execute as @s[scores={detect.interact=302}] run function debug:sub/chance_minus {type:"echo"}

# 回响选配
execute as @s[scores={detect.interact=303..304}] run scoreboard players operation $value temp = $echo_max data
execute as @s[scores={detect.interact=303..304}] run scoreboard players operation $value temp /= #5 data
execute as @s[scores={detect.interact=303..304}] run scoreboard players operation $valueA temp = $echo_max data
execute as @s[scores={detect.interact=303..304}] run scoreboard players operation $valueA temp %= #5 data
execute as @s[scores={detect.interact=303..304}] unless score $valueA temp matches 0 run scoreboard players add $value temp 1
execute as @s[scores={detect.interact=303}] run function debug:sub/prev {type:"echo_page",max:"1"}
execute as @s[scores={detect.interact=304}] run scoreboard players add $value temp 1
execute as @s[scores={detect.interact=304}] store result storage ms:temp limit int 1 run scoreboard players get $value temp
execute as @s[scores={detect.interact=304}] run data merge storage ms:temp {type:"echo_page"}
execute as @s[scores={detect.interact=304}] run function debug:sub/next with storage ms:temp
execute as @s[scores={detect.interact=401}] run function debug:sub/binary {storage:"echo",target:"01"}
execute as @s[scores={detect.interact=402}] run function debug:sub/binary {storage:"echo",target:"02"}
execute as @s[scores={detect.interact=403}] run function debug:sub/binary {storage:"echo",target:"03"}
execute as @s[scores={detect.interact=404}] run function debug:sub/binary {storage:"echo",target:"04"}
execute as @s[scores={detect.interact=405}] run function debug:sub/binary {storage:"echo",target:"05"}
execute as @s[scores={detect.interact=406}] run function debug:sub/binary {storage:"echo",target:"06"}
execute as @s[scores={detect.interact=407}] run function debug:sub/binary {storage:"echo",target:"07"}
execute as @s[scores={detect.interact=408}] run function debug:sub/binary {storage:"echo",target:"08"}
execute as @s[scores={detect.interact=409}] run function debug:sub/binary {storage:"echo",target:"09"}
execute as @s[scores={detect.interact=410}] run function debug:sub/binary {storage:"echo",target:"10"}

# 能力分配方式
execute as @s[scores={detect.interact=500}] run function debug:sub/next {type:"ability_assign",limit:"6"}