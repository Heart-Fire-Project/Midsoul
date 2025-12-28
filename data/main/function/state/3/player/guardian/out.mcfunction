tellraw @a [{text:"\n» ",color:"red",bold:true},{translate:"ms.info.guardian_out",fallback:"守卫者意外出局，游戏结束！",bold:false}]
scoreboard players set $affact_rating data 0
execute as @a[team=soul] at @s run function main:state/4/revive
function main:state/99/enter