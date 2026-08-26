tag @s remove can_equip
tellraw @s ""

# 解锁条件
tag @s[advancements={main:extra/weapon/0=true},scores={temp=0}] add can_equip
tag @s[advancements={main:extra/weapon/1=true},scores={temp=1}] add can_equip
tag @s[advancements={main:extra/weapon/2=true},scores={temp=2}] add can_equip
tag @s[advancements={main:extra/weapon/3=true},scores={temp=3}] add can_equip
tag @s[advancements={main:extra/weapon/4=true},scores={temp=4}] add can_equip

# 可以使用
scoreboard players operation @s[tag=can_equip] extra.weapon = @s temp
playsound entity.arrow.hit_player player @s[tag=can_equip] 0 1000000 0 120000
tellraw @s[tag=can_equip,scores={temp=0}] ["",{text:"» ",color:"green",bold:true},{translate:"ms.weapon",fallback:"武器样式"},{translate:"ms.extra.switch",fallback:"已切换至 %s",with:[{translate:"ms.weapon.0",fallback:"祛灵刃",color:"green"}]}]
tellraw @s[tag=can_equip,scores={temp=1}] ["",{text:"» ",color:"green",bold:true},{translate:"ms.weapon",fallback:"武器样式"},{translate:"ms.extra.switch",fallback:"已切换至 %s",with:[{translate:"ms.weapon.1",fallback:"祛灵刃 α",color:"green"}]}]
tellraw @s[tag=can_equip,scores={temp=2}] ["",{text:"» ",color:"green",bold:true},{translate:"ms.weapon",fallback:"武器样式"},{translate:"ms.extra.switch",fallback:"已切换至 %s",with:[{translate:"ms.weapon.2",fallback:"祛灵刃 β",color:"green"}]}]
tellraw @s[tag=can_equip,scores={temp=3}] ["",{text:"» ",color:"green",bold:true},{translate:"ms.weapon",fallback:"武器样式"},{translate:"ms.extra.switch",fallback:"已切换至 %s",with:[{translate:"ms.weapon.3",fallback:"破魂锤",color:"green"}]}]
tellraw @s[tag=can_equip,scores={temp=4}] ["",{text:"» ",color:"green",bold:true},{translate:"ms.weapon",fallback:"武器样式"},{translate:"ms.extra.switch",fallback:"已切换至 %s",with:[{translate:"ms.weapon.4",fallback:"散炽棍",color:"green"}]}]

# 不得使用
playsound block.note_block.didgeridoo player @s[tag=!can_equip] 0 1000000 0 120000
tellraw @s[tag=!can_equip] [{text:"» ",color:"red",bold:true},{translate:"ms.extra.locked",fallback:"你还未解锁该装饰品",bold:false}]