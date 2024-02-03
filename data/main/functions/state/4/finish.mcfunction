# 语文隋唐小测
function base:random {storage:"data",max:"5",min:"1"}
execute if score $random data matches 1 as @s run tellraw @a[team=!admin] [{"text":" » ","color":"green","bold":true},{"selector":"@s","bold":false}," ",{"translate":"ms.info.finish.1","fallback":"历经沧桑终归来"},"\n"]
execute if score $random data matches 2 as @s run tellraw @a[team=!admin] [{"text":" » ","color":"green","bold":true},{"selector":"@s","bold":false}," ",{"translate":"ms.info.finish,2","fallback":"一瞬思绪回现实"},"\n"]
execute if score $random data matches 3 as @s run tellraw @a[team=!admin] [{"text":" » ","color":"green","bold":true},{"selector":"@s","bold":false}," ",{"translate":"ms.info.finish.3","fallback":"灵力凝聚铸肉身"},"\n"]
execute if score $random data matches 4 as @s run tellraw @a[team=!admin] [{"text":" » ","color":"green","bold":true},{"selector":"@s","bold":false}," ",{"translate":"ms.info.finish.4","fallback":"光芒万丈又得胜"},"\n"]
execute if score $random data matches 5 as @s run tellraw @a[team=!admin] [{"text":" » ","color":"green","bold":true},{"selector":"@s","bold":false}," ",{"translate":"ms.info.finish.5","fallback":"艰苦奋斗终有报"},"\n"]

particle firework ~ ~0.4 ~ 0.2 0.1 0.2 0.5 256 force @a
team join finish @s
gamemode spectator @s
playsound block.respawn_anchor.set_spawn player @a[team=!admin] 0 1000000 0 1000000 0.7
effect clear @s
attribute @s generic.movement_speed base set 0.1

scoreboard players add @s stat_finish 1