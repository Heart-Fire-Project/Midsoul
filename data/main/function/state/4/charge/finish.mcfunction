# 若是第一个开启 | 提前判定
execute unless entity @e[tag=open_purple] run function main:state/4/charge/first

# 充能完成
title @a title ""
title @a subtitle {translate:"ms.title.4.open",fallback:"⚜ 传送门开启 ⚜",color:"#FF77EE"}
execute unless entity @e[tag=open_purple] run playsound entity.warden.emerge player @a 0 1000000 0 120000
execute if entity @e[tag=open_purple] run playsound event.mob_effect.bad_omen player @a 0 1000000 0 120000
tag @s add open_purple
data modify entity @s block_state set value {Name:"sculk_shrieker",Properties:{can_summon:"true"}}