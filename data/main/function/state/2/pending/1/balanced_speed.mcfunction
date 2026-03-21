# 平衡性调速判定
scoreboard players set $balanced_speed state 0
scoreboard players operation $value temp = $soul_count data
scoreboard players operation $value temp *= #10 data
scoreboard players operation $value temp /= $guardian_count data
execute if score $value temp matches ..29 run scoreboard players set $balanced_speed state 35
execute if score $value temp matches 30..34 run scoreboard players set $balanced_speed state 20
execute if score $value temp matches 35..39 run scoreboard players set $balanced_speed state 10
execute if score $value temp matches 50.. run scoreboard players set $balanced_speed state -20
scoreboard players set $collect_extend state 100
execute if score $soul_count data matches 5 run scoreboard players set $collect_extend state 88
execute if score $soul_count data matches 6 run scoreboard players set $collect_extend state 78
execute if score $soul_count data matches 7 run scoreboard players set $collect_extend state 70
execute if score $soul_count data matches 8.. run scoreboard players set $collect_extend state 64
execute if score $balanced_speed state matches 1.. if score $collect_extend state matches 100 run tellraw @a [{text:"\n🔨 ",color:"#77E2F0"},{translate:"ms.info.balanced_speed",fallback:"平衡性交互调整"},"\n",{translate:"ms.info.balanced_speed.desc.1-a",fallback:"本局游戏中，灵魂的交互速率 %s%s%s",with:[{text:"+",color:"green"},{score:{name:"$balanced_speed",objective:"state"},color:"green"},{text:"%",color:"green"}],color:"white"}]
execute if score $balanced_speed state matches ..-1 if score $collect_extend state matches 100 run tellraw @a [{text:"\n🔨 ",color:"#77E2F0"},{translate:"ms.info.balanced_speed",fallback:"平衡性交互调整"},"\n",{translate:"ms.info.balanced_speed.desc.1-a",fallback:"本局游戏中，灵魂的交互速率 %s%s%s",with:["",{score:{name:"$balanced_speed",objective:"state"},color:"red"},{text:"%",color:"red"}],color:"white"}]
execute if score $balanced_speed state matches 0 if score $collect_extend state matches ..99 run tellraw @a [{text:"\n🔨 ",color:"#77E2F0"},{translate:"ms.info.balanced_speed",fallback:"平衡性交互调整"},"\n",{translate:"ms.info.balanced_speed.desc.1-b",fallback:"本局游戏中，灵魂的碎片收集速率降低至 %s%s",with:[{score:{name:"$collect_extend",objective:"state"},color:"red"},{text:"%",color:"red"}],color:"white"}]
execute if score $balanced_speed state matches 1.. if score $collect_extend state matches ..99 run tellraw @a [{text:"\n🔨 ",color:"#77E2F0"},{translate:"ms.info.balanced_speed",fallback:"平衡性交互调整"},"\n",{translate:"ms.info.balanced_speed.desc.1-c",fallback:"本局游戏中，灵魂的交互速率 %s%s%s；碎片收集速率降低至 %s%s",with:[{text:"+",color:"green"},{score:{name:"$balanced_speed",objective:"state"},color:"green"},{text:"%",color:"green"},{score:{name:"$collect_extend",objective:"state"},color:"red"},{text:"%",color:"red"}],color:"white"}]
execute if score $balanced_speed state matches ..-1 if score $collect_extend state matches ..99 run tellraw @a [{text:"\n🔨 ",color:"#77E2F0"},{translate:"ms.info.balanced_speed",fallback:"平衡性交互调整"},"\n",{translate:"ms.info.balanced_speed.desc.1-c",fallback:"本局游戏中，灵魂的交互速率 %s%s%s；碎片收集速率降低至 %s%s",with:["",{score:{name:"$balanced_speed",objective:"state"},color:"red"},{text:"%",color:"red"},{score:{name:"$collect_extend",objective:"state"},color:"red"},{text:"%",color:"red"}],color:"white"}]
execute unless score $balanced_speed state matches 0 run playsound entity.villager.work_fletcher player @a 0 1000000 0 120000
execute if score $balanced_speed state matches 0 unless score $collect_extend state matches 100 run playsound entity.villager.work_fletcher player @a 0 1000000 0 120000