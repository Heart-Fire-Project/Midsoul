$function base:modify_setting/binary {storage:"ms:$(storage)",target:"$(target)"}

# 部分项目特殊调整
execute if score $state data matches 0 if data storage ms:setting {setting_lock:true} unless entity @e[tag=lobby_entity,tag=setting_lock] run summon text_display -9 6.05 -9 {Tags:[lobby_entity,setting_lock],text:[{translate:"ms.lobby.setting_lock",fallback:"当前设定已被管理员锁定",color:"red"}],background:-1,billboard:"center",alignment:"center",line_width:240,interpolation_duration:0,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score $state data matches 0 if data storage ms:setting {setting_lock:false} as @e[tag=lobby_entity,tag=setting_lock] run kill @s
execute if data storage ms:setting {reduce_f3:true} run gamerule reduced_debug_info true
execute if data storage ms:setting {reduce_f3:false} run gamerule reduced_debug_info false
execute if data storage ms:setting {send_feedback:true} run gamerule send_command_feedback true
execute if data storage ms:setting {send_feedback:false} run gamerule send_command_feedback false

# 刷新
execute if score $state data matches 0 run function main:state/0/refresh/block
execute if score $state data matches 0 run function main:state/0/refresh/sign

# 若通过调试面板触发，则再次呼起
execute if score @s detect.interact matches -1999..-1000 run function debug:panel/1
execute if score @s detect.interact matches -2999..-2000 run function debug:panel/2
execute if score @s detect.interact matches -3999..-3000 run function debug:panel/3
execute if score @s detect.interact matches -4999..-4000 run function debug:panel/4
execute unless score @s detect.interact matches ..-1 run playsound ui.button.click player @s 0 1000000 0 120000