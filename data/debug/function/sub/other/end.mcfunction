# 强制结算
tellraw @a [{text:"» ",bold:true,color:"#B1A4F4"},{translate:"ms.info.force_end",fallback:"%s 已强制进入结算阶段",with:[{selector:"@s"}],bold:false}]

scoreboard players set $state data 5
scoreboard players set @a[tag=game_player] state 0
scoreboard players set $5_ending tick.general 250

execute if score $mode data matches 1..2 as @a run function main:state/3/effect
execute if score $mode data matches 1..2 run function main:state/5/loop/1