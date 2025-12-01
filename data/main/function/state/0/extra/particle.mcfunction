tag @s remove can_equip
tellraw @s ""

# 解锁条件
execute if score @s temp matches 0 run tag @s add can_equip
execute if score @s[advancements={main:extra/particle/1=true}] temp matches 1 run tag @s add can_equip
execute if score @s[advancements={main:extra/particle/2=true}] temp matches 2 run tag @s add can_equip
execute if score @s[advancements={main:extra/particle/3=true}] temp matches 3 run tag @s add can_equip
execute if score @s[advancements={main:extra/particle/4=true}] temp matches 4 run tag @s add can_equip
execute if score @s[advancements={main:extra/particle/5=true}] temp matches 5 run tag @s add can_equip
execute if score @s[advancements={main:extra/particle/6=true}] temp matches 6 run tag @s add can_equip
execute if score @s[advancements={main:extra/particle/7=true}] temp matches 7 run tag @s add can_equip
execute if score @s[advancements={main:extra/particle/8=true}] temp matches 8 run tag @s add can_equip
execute if score @s[advancements={main:extra/particle/9=true}] temp matches 9 run tag @s add can_equip

# 可以使用
execute as @s[tag=can_equip] run scoreboard players operation @s extra.particle = @s temp
playsound entity.arrow.hit_player player @s[tag=can_equip] 0 1000000 0 120000
tellraw @s[tag=can_equip,scores={temp=0}] ["",{text:"» ",color:"green",bold:true},{translate:"ms.particle",fallback:"粒子效果"},{translate:"ms.extra.switch",fallback:"已切换至 %s",with:[{translate:"ms.particle.0",fallback:"无粒子效果",color:"green"}]}]
tellraw @s[tag=can_equip,scores={temp=1}] ["",{text:"» ",color:"green",bold:true},{translate:"ms.particle",fallback:"粒子效果"},{translate:"ms.extra.switch",fallback:"已切换至 %s",with:[{translate:"ms.particle.1",fallback:"午夜繁星",color:"green"}]}]
tellraw @s[tag=can_equip,scores={temp=2}] ["",{text:"» ",color:"green",bold:true},{translate:"ms.particle",fallback:"粒子效果"},{translate:"ms.extra.switch",fallback:"已切换至 %s",with:[{translate:"ms.particle.2",fallback:"氤氲灵气",color:"green"}]}]
tellraw @s[tag=can_equip,scores={temp=3}] ["",{text:"» ",color:"green",bold:true},{translate:"ms.particle",fallback:"粒子效果"},{translate:"ms.extra.switch",fallback:"已切换至 %s",with:[{translate:"ms.particle.3",fallback:"霜凝冰痕",color:"green"}]}]
tellraw @s[tag=can_equip,scores={temp=4}] ["",{text:"» ",color:"green",bold:true},{translate:"ms.particle",fallback:"粒子效果"},{translate:"ms.extra.switch",fallback:"已切换至 %s",with:[{translate:"ms.particle.4",fallback:"点灯施援",color:"green"}]}]
tellraw @s[tag=can_equip,scores={temp=5}] ["",{text:"» ",color:"green",bold:true},{translate:"ms.particle",fallback:"粒子效果"},{translate:"ms.extra.switch",fallback:"已切换至 %s",with:[{translate:"ms.particle.5",fallback:"灵迹随踪",color:"green"}]}]
tellraw @s[tag=can_equip,scores={temp=6}] ["",{text:"» ",color:"green",bold:true},{translate:"ms.particle",fallback:"粒子效果"},{translate:"ms.extra.switch",fallback:"已切换至 %s",with:[{translate:"ms.particle.6",fallback:"绚彩粉墨",color:"green"}]}]
tellraw @s[tag=can_equip,scores={temp=7}] ["",{text:"» ",color:"green",bold:true},{translate:"ms.particle",fallback:"粒子效果"},{translate:"ms.extra.switch",fallback:"已切换至 %s",with:[{translate:"ms.particle.7",fallback:"万象环身",color:"green"}]}]
tellraw @s[tag=can_equip,scores={temp=8}] ["",{text:"» ",color:"green",bold:true},{translate:"ms.particle",fallback:"粒子效果"},{translate:"ms.extra.switch",fallback:"已切换至 %s",with:[{translate:"ms.particle.8",fallback:"桃起樱落",color:"green"}]}]
tellraw @s[tag=can_equip,scores={temp=9}] ["",{text:"» ",color:"green",bold:true},{translate:"ms.particle",fallback:"粒子效果"},{translate:"ms.extra.switch",fallback:"已切换至 %s",with:[{translate:"ms.particle.9",fallback:"双生魂焰",color:"green"}]}]

# 不得使用
playsound block.note_block.didgeridoo player @s[tag=!can_equip] 0 1000000 0 120000
tellraw @s[tag=!can_equip] [{text:"» ",color:"red",bold:true},{translate:"ms.extra.locked",fallback:"你还未解锁该装饰品",bold:false}]