# 确认是否可以生成
$scoreboard players set $chest_max temp $(chest_max)
scoreboard players set $chest_current temp 0
execute as @e[tag=gray] run scoreboard players add $chest_current temp 1

# 若可生成，再进行
$execute if score $chest_current temp < $chest_max temp run function main:state/3/event/summon/gray {num:"$(chest_summon)"}

# 成功生成后播报
execute if score $chest_current temp < $chest_max temp run tellraw @a [{text:"» ",color:"#CCCCCC",bold:true},{translate:"ms.info.3.chest",fallback:"已生成数个灵魂宝物盒",bold:false}]
execute if score $chest_current temp < $chest_max temp run playsound block.vault.reject_rewarded_player ambient @a 0 1000000 0 120000