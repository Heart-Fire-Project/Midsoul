# 强制结算
tellraw @a [{text:"» ",bold:true,color:"#B1A4F4"},{translate:"ms.info.force_end",fallback:"%s 已强制进入结算阶段",with:[{selector:"@s"}],bold:false}]

scoreboard players set $state data 5
scoreboard players set @a[tag=game_player] state 0
scoreboard players set $5_ending tick.general 240

execute if data storage ms:mode {logic:"1"} as @a run function main:state/3/effect
execute if data storage ms:mode {rating:"1"} run function main:state/5/loop/1