# 多守卫特殊机制
scoreboard players set $muiti_guardian state 0
execute if score $guardian_count data matches 2.. run scoreboard players set $muiti_guardian state 1
execute if score $muiti_guardian state matches 1 run playsound entity.villager.work_toolsmith player @a 0 1000000 0 120000
execute if score $muiti_guardian state matches 1 run tellraw @a [{text:"\n🔧 ",color:"#9896F1"},{translate:"ms.info.multi_guardian",fallback:"多守卫特殊机制"},"\n",{translate:"ms.info.multi_guardian.desc.1-2",fallback:"本局游戏中，灵魂所受伤害 %s（同类效果不叠加）",with:[{text:"-20%",color:"green"}],color:"white"}]