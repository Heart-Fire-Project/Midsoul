tellraw @a[team=!admin] [{"text":"","color":"light_purple"},{"text":"» ","bold":true},{"translate":"ms.echo.8","fallback":"命运交响曲"},{"text":" ❖ "},{"translate":"ms.echo.active","fallback":"回响效果已触发"}]
playsound entity.wind_charge.wind_burst player @a[team=!admin] 0 1000000 0 1000000

# 按序处理
execute as @a[tag=game_player] at @s run function main:state/3/echo/08a
execute as @a[tag=game_player] at @s run function main:state/3/echo/08b

# 去除残留
kill @e[tag=E08]

# 重设倒计时
function main:state/3/echo/init {min:"30",max:"120"}