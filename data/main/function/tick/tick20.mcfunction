schedule function main:tick/tick20 20t replace

# 管理员退出提示
execute unless score $admin_tip tick.general matches ..0 run scoreboard players remove $admin_tip tick.general 1
execute if score $admin_tip tick.general matches ..0 run tellraw @a[team=admin] [{text:"» ",bold:true,color:"light_purple"},{translate:"ms.info.leave_admin",fallback:"点这里以退出 admin",bold:false,"click_event":{action:"run_command",command:"trigger detect.interact set -777"}}]
execute if score $admin_tip tick.general matches ..0 run scoreboard players set $admin_tip tick.general 150

# 地图特殊机制，一般是重置方块
execute if score $state data matches 3..5 run function main:lib/map/tick20/general

# 定向至其他函数
execute if score $state data matches 3..4 run function main:state/3/tick20
execute if score $state data matches 0 run function main:state/0/tick20