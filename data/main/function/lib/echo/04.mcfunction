tellraw @a [{text:"",color:"light_purple"},{text:"» ",bold:true},{translate:"ms.echo.active",fallback:"回响触发"},{text:" ❖ "},{translate:"ms.echo.4",fallback:"天幕降落雷"}]

# 哇，□□□□，哇这个雷劈过来，差点劈到我啊！
execute at @e[tag=E04] run summon lightning_bolt

# 把守卫者劈懵
execute at @e[tag=E04] as @a[distance=..4,team=guardian,scores={state=0}] run function main:lib/player/strike

# 准备下一次
tag @e remove E04
function main:lib/echo/init {min:"20",max:"60"}