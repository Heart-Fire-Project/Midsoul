tellraw @a [{text:"",color:"light_purple"},{text:"» ",bold:true},{translate:"ms.echo.active",fallback:"回响触发"},{text:" ❖ "},{translate:"ms.echo.1",fallback:"强制性引导"}]

# 清除已有标记
tag @a remove echo_target

# 随机标记 2~3 个灵魂 | 仅 >5 灵魂存活时为 3 标记
execute if score $alive data matches 5.. run tag @a[team=soul,limit=3,sort=random] add echo_target
execute if score $alive data matches 3..4 run tag @a[team=soul,limit=2,sort=random] add echo_target
title @a[tag=echo_target] actionbar [{text:"❖ ",color:"light_purple"},{translate:"ms.echo.marked",fallback:"你已被回响标记"}," ❖"]
playsound block.trial_spawner.detect_player player @a[tag=!echo_target] 0 1000000 0 120000
playsound block.bell.use player @a[tag=echo_target] 0 1000000 0 120000

# 重设倒计时
execute store result score $echo tick.general run random value 45..80