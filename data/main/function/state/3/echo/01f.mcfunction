tellraw @a [{text:"",color:"light_purple"},{text:"» ",bold:true},{translate:"ms.echo.invaild",fallback:"回响失效"},{text:" ❖ "},{translate:"ms.echo.1",fallback:"强制性引导"}]
playsound block.respawn_anchor.deplete player @a 0 1000000 0 120000
scoreboard players set $3_echo tick.general -1

# 取消所有标记
effect clear @a[tag=echo_target] glowing
effect clear @a[tag=!echo_target] resistance
tag @a remove echo_target