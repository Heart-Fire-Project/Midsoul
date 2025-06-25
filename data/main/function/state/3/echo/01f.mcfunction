tellraw @a[team=!admin] [{"text":"","color":"light_purple"},{"text":"» ","bold":true},{"translate":"ms.echo.1","fallback":"强制性引导"},{"text":" ❖ "},{"translate":"ms.echo.invaild","fallback":"回响效果已结束"}]
playsound block.respawn_anchor.deplete player @a[team=!admin] 0 1000000 0 1000000
scoreboard players set $3_echo tick.global -1

# 取消所有标记
effect clear @a[tag=echo_target] glowing
effect clear @a[tag=!echo_target] resistance
tag @a remove echo_target