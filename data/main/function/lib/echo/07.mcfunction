tellraw @a [{text:"",color:"light_purple"},{text:"» ",bold:true},{translate:"ms.echo.active",fallback:"回响触发"},{text:" ❖ "},{translate:"ms.echo.7",fallback:"命运交响曲"}]
playsound entity.wind_charge.wind_burst player @a 0 1000000 0 200000

# 先对灵魂处理 | 可能存在由于其他所有灵魂所传送点位成环，导致传送失败的情况
execute as @a[tag=game_player,team=soul] at @s if entity @a[team=soul,distance=0.001..] run function main:lib/echo/07a
execute as @a[tag=game_player,team=soul] at @s if entity @a[team=soul,distance=0.001..] run function main:lib/echo/07b
kill @e[tag=E07]

# 再对守卫者处理 | 传送失败所残留的标点已在上方清除
execute as @a[tag=game_player,team=guardian] at @s if entity @a[team=guardian,distance=0.001..] run function main:lib/echo/07a
execute as @a[tag=game_player,team=guardian] at @s if entity @a[team=guardian,distance=0.001..] run function main:lib/echo/07b
kill @e[tag=E07]

# 重设倒计时
execute store result score $echo tick.general run random value 30..120