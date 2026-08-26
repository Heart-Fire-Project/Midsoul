tag @s remove can_equip
tellraw @s ""

# 解锁条件
tag @s[advancements={main:extra/headset/root=true},scores={temp=0}] add can_equip
tag @s[advancements={main:extra/headset/1=true},scores={temp=1}] add can_equip
tag @s[advancements={main:extra/headset/2=true},scores={temp=2}] add can_equip
tag @s[advancements={main:extra/headset/3=true},scores={temp=3}] add can_equip
tag @s[advancements={main:extra/headset/4=true},scores={temp=4}] add can_equip
tag @s[advancements={main:extra/headset/5=true},scores={temp=5}] add can_equip

# 可以使用
scoreboard players operation @s[tag=can_equip] extra.headset = @s temp
playsound entity.arrow.hit_player player @s[tag=can_equip] 0 1000000 0 120000
tellraw @s[tag=can_equip,scores={temp=0}] ["",{text:"» ",color:"green",bold:true},{translate:"ms.headset",fallback:"饰品装配"},{translate:"ms.extra.switch",fallback:"已切换至 %s",with:[{translate:"ms.headset.0",fallback:"空气",color:"green"}]}]
tellraw @s[tag=can_equip,scores={temp=1}] ["",{text:"» ",color:"green",bold:true},{translate:"ms.headset",fallback:"饰品装配"},{translate:"ms.extra.switch",fallback:"已切换至 %s",with:[{translate:"ms.headset.1",fallback:"银辉独角",color:"green"}]}]
tellraw @s[tag=can_equip,scores={temp=2}] ["",{text:"» ",color:"green",bold:true},{translate:"ms.headset",fallback:"饰品装配"},{translate:"ms.extra.switch",fallback:"已切换至 %s",with:[{translate:"ms.headset.2",fallback:"声波通讯",color:"green"}]}]
tellraw @s[tag=can_equip,scores={temp=3}] ["",{text:"» ",color:"green",bold:true},{translate:"ms.headset",fallback:"饰品装配"},{translate:"ms.extra.switch",fallback:"已切换至 %s",with:[{translate:"ms.headset.3",fallback:"紫晶冠冕",color:"green"}]}]
tellraw @s[tag=can_equip,scores={temp=4}] ["",{text:"» ",color:"green",bold:true},{translate:"ms.headset",fallback:"饰品装配"},{translate:"ms.extra.switch",fallback:"已切换至 %s",with:[{translate:"ms.headset.4",fallback:"游刃有鱼",color:"green"}]}]
tellraw @s[tag=can_equip,scores={temp=5}] ["",{text:"» ",color:"green",bold:true},{translate:"ms.headset",fallback:"饰品装配"},{translate:"ms.extra.switch",fallback:"已切换至 %s",with:[{translate:"ms.headset.5",fallback:"垂落绿荫",color:"green"}]}]

# 不得使用
playsound block.note_block.didgeridoo player @s[tag=!can_equip] 0 1000000 0 120000
tellraw @s[tag=!can_equip] [{text:"» ",color:"red",bold:true},{translate:"ms.extra.locked",fallback:"你还未解锁该装饰品",bold:false}]