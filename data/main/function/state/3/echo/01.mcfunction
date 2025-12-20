tellraw @a [{text:"",color:"light_purple"},{text:"» ",bold:true},{translate:"ms.echo.active",fallback:"回响触发"},{text:" ❖ "},{translate:"ms.echo.1",fallback:"强制性引导"}]

# 去除掉已有 tag 与效果
effect clear @a[tag=echo_target] glowing
tag @a remove echo_target

# 重新选择目标
execute if score $alive data matches 5.. run tag @a[team=soul,limit=3,sort=random] add echo_target
execute if score $alive data matches 3..4 run tag @a[team=soul,limit=2,sort=random] add echo_target
title @a[tag=echo_target] actionbar [{text:"❖ ",color:"light_purple"},{translate:"ms.echo.marked",fallback:"你已被回响标记"}," ❖"]
playsound block.trial_spawner.detect_player player @a[tag=!echo_target] 0 1000000 0 120000
playsound block.bell.use player @a[tag=echo_target] 0 1000000 0 120000

# 初始化效果
effect give @a[tag=echo_target] glowing infinite 0 true

# 重设倒计时
function main:state/3/echo/init {min:"45",max:"80"}
scoreboard players operation $value temp = $3_echo tick.general
scoreboard players operation $value temp *= #20 data
scoreboard players operation @a[tag=!echo_target] tick.invincible > $value temp