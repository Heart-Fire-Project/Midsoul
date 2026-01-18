# 地图
execute if score @s detect.interact matches 100 run function debug:sub/select {type:"map",num:"0"}
execute if score @s detect.interact matches 101 run function debug:sub/select {type:"map",num:"1"}
execute if score @s detect.interact matches 102 run function debug:sub/select {type:"map",num:"2"}
execute if score @s detect.interact matches 103 run function debug:sub/select {type:"map",num:"3"}
execute if score @s detect.interact matches 104 run function debug:sub/select {type:"map",num:"4"}

# 模式
execute if score @s detect.interact matches 201 run function debug:sub/select {type:"mode",num:"1"}
execute if score @s detect.interact matches 202 run function debug:sub/select {type:"mode",num:"2"}

# 回响概率
execute if score @s detect.interact matches 301 run function debug:sub/chance_add {type:"echo"}
execute if score @s detect.interact matches 302 run function debug:sub/chance_minus {type:"echo"}

# 回响选配
execute if score @s detect.interact matches 303 run function debug:sub/prev {type:"echo_page",max:"1"}
execute if score @s detect.interact matches 304 run function debug:sub/next {type:"echo_page",limit:"3"}
execute if score @s detect.interact matches 401 run function debug:sub/binary {storage:"echo",target:"01"}
execute if score @s detect.interact matches 402 run function debug:sub/binary {storage:"echo",target:"02"}
execute if score @s detect.interact matches 403 run function debug:sub/binary {storage:"echo",target:"03"}
execute if score @s detect.interact matches 404 run function debug:sub/binary {storage:"echo",target:"04"}
execute if score @s detect.interact matches 405 run function debug:sub/binary {storage:"echo",target:"05"}
execute if score @s detect.interact matches 406 run function debug:sub/binary {storage:"echo",target:"06"}
execute if score @s detect.interact matches 407 run function debug:sub/binary {storage:"echo",target:"07"}
execute if score @s detect.interact matches 408 run function debug:sub/binary {storage:"echo",target:"08"}
execute if score @s detect.interact matches 409 run function debug:sub/binary {storage:"echo",target:"09"}
execute if score @s detect.interact matches 410 run function debug:sub/binary {storage:"echo",target:"10"}

# 能力分配方式
execute if score @s detect.interact matches 500 run function debug:sub/next {type:"ability_assign",limit:"6"}