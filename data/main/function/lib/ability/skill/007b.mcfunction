# 按照距离将有不同颜色的粒子
$execute if score $front temp2 matches 0..11 run particle trail{target:[$(x),$(y),$(z)],color:-9379339,duration:$(duration)} ~ ~1 ~ 0.1 0.1 0.1 1 3 force @a
$execute if score $front temp2 matches 12..13 run particle trail{target:[$(x),$(y),$(z)],color:-4728379,duration:$(duration)} ~ ~1 ~ 0.1 0.1 0.1 1 3 force @a
$execute if score $front temp2 matches 14..15 run particle trail{target:[$(x),$(y),$(z)],color:-11884,duration:$(duration)} ~ ~1 ~ 0.1 0.1 0.1 1 3 force @a
$execute if score $front temp2 matches 16.. run particle trail{target:[$(x),$(y),$(z)],color:-30080,duration:$(duration)} ~ ~1 ~ 0.2 0.2 0.2 1 7 force @a