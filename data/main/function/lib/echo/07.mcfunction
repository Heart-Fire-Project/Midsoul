tellraw @a [{text:"",color:"light_purple"},{text:"» ",bold:true},{translate:"ms.echo.active",fallback:"回响触发"},{text:" ❖ "},{translate:"ms.echo.7",fallback:"命运交响曲"}]
playsound entity.wind_charge.wind_burst player @a 0 1000000 0 200000

# 按序处理
execute as @a[tag=game_player,team=!revive,team=!dead] at @s run function main:lib/echo/07a
execute as @a[tag=game_player,team=!revive,team=!dead] at @s run function main:lib/echo/07b

# 去除残留
kill @e[tag=E07]

# 重设倒计时
function main:lib/echo/init {min:"30",max:"120"}