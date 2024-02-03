# 孩子们，我回来了
scoreboard players set @s state 0
tellraw @a[team=!admin] [{"text":" » ","color":"gold","bold":true},{"selector":"@s","bold":false},{"translate":"ms.info.heal","fallback":" 成功脱离垂死状态!","bold":false},"\n"]
playsound block.conduit.activate player @a[team=!admin] 0 1000000 0 1000000
function main:state/3/effect

tp @s ~ ~ ~
effect give @s speed 20 4
effect give @s resistance 20 4
damage @s 10 out_of_world