# 提升一级灵气
tellraw @a [{text:"» ",bold:true,color:"#A2D5F2"},{translate:"ms.info.add_aura",fallback:"%s 已操作提升一级灵气",with:[{selector:"@s"}],bold:false}]

# 特殊处理
execute if score $state data matches 3 if score $aura_rank data matches 3 run scoreboard players set $3_process tick.general 11999

playsound block.sculk_shrieker.shriek player @a 0 1000000 0 120000
execute if score $aura_rank data matches 0 run scoreboard players set $aura_rank data -1
execute if score $aura_rank data matches 1 run scoreboard players set $aura_rank data -2
execute if score $aura_rank data matches 2 run scoreboard players set $aura_rank data -3
execute if score $aura_rank data matches -1 run tellraw @a [{text:"» ",color:"#80FFFF",bold:true},{translate:"ms.info.3.aura.1",fallback:"灵气初起 ◆◇◇ 灵魂收集碎片时将与附近的碎片共鸣",bold:false}]
execute if score $aura_rank data matches -2 run tellraw @a [{text:"» ",color:"#80D5FF",bold:true},{translate:"ms.info.3.aura.2",fallback:"灵气弥散 ◆◆◇ 灵魂将与附近的碎片持续共鸣",bold:false}]
execute if score $aura_rank data matches -3 run tellraw @a [{text:"» ",color:"#80AAFF",bold:true},{translate:"ms.info.3.aura.3",fallback:"灵气充盈 ◆◆◆ 场上所有剩余碎片持续进行共鸣",bold:false}]
execute if score $aura_rank data matches -3 as @e[tag=blue] run data merge entity @s {Glowing:1b}
execute if score $aura_rank data matches -3..-1 run scoreboard players operation $aura_rank data *= #-1 data