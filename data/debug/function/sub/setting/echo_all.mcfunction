data merge storage ms:echo {01:true,02:true,03:true,04:true,05:true,06:true,07:true,08:true,09:true,10:true}

# 刷新
execute if score $state data matches 0 run function main:state/0/refresh/block
execute if score $state data matches 0 run function main:state/0/refresh/sign

# 若通过调试面板触发，则再次呼起
execute if score @s detect.interact matches -1999..-1000 run function debug:panel/1
execute unless score @s detect.interact matches ..-1 run playsound ui.button.click player @s 0 1000000 0 120000