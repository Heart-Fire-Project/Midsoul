tellraw @a [{text:"",color:"light_purple"},{text:"» ",bold:true},{translate:"ms.echo.invaild",fallback:"回响失效"},{text:" ❖ "},{translate:"ms.echo.1",fallback:"强制性引导"}]
playsound block.respawn_anchor.deplete player @a 0 1000000 0 120000
scoreboard players set $echo tick.general -1

# 移除所有标记
tag @a remove echo_target