# 若守卫者不在
execute if entity @a[team=guardian] if score $3_noguar tick.general matches ..599 run title @a actionbar ""
execute if entity @a[team=guardian] run scoreboard players set $3_noguar tick.general 600
execute unless entity @a[team=guardian] run function main:state/3/event/no_guardian

# 若仅剩一未垂死灵魂 | 优先度小于守卫者掉线提示
execute if score $undying data matches 1 unless score $alive data matches 1 if entity @a[team=guardian] run function main:state/3/event/last_undying

# 若灵魂已死光
execute unless entity @a[team=soul,scores={state=0}] unless entity @e[tag=open_purple] run tellraw @a[team=guardian] [{text:" +120 | ",color:"#CC4433"},{translate:"ms.rating.offense.b",fallback:"遥遥无期"}]
execute unless entity @a[team=soul,scores={state=0}] unless entity @e[tag=open_purple] run scoreboard players set $guardian_offense data 160
execute unless entity @a[team=soul,scores={state=0}] if entity @e[tag=open_purple] run function base:caculate/time {unit:"sec",tick:"$4_portal",source:"tick.general"}
execute unless entity @a[team=soul,scores={state=0}] if entity @e[tag=open_purple] run scoreboard players add $sec temp2 1
execute unless entity @a[team=soul,scores={state=0}] if entity @e[tag=open_purple] if score $sec temp2 matches 121.. run scoreboard players set $sec temp2 120
execute unless entity @a[team=soul,scores={state=0}] if entity @e[tag=open_purple] run tellraw @a[team=guardian] [{text:" +",color:"#CC4433"},{score:{name:"$sec",objective:"temp2"}}," | ",{translate:"ms.rating.offense.c",fallback:"极限追逃"}]
execute unless entity @a[team=soul,scores={state=0}] if entity @e[tag=open_purple] run scoreboard players operation $guardian_offense data = $sec temp2
execute unless entity @a[team=soul,scores={state=0}] run function main:state/5/enter

# 剩余 42 秒，公布第三传送门位置
execute unless data entity @n[tag=3rd_door] Glowing if score $4_portal tick.general matches ..840 run function main:state/4/announce_door

# 若只剩一位存活或仅剩 20 秒，开启终局
execute if score $alive data matches 1 if score $4_finale state matches 0 run function main:state/4/finale
execute if score $4_portal tick.general matches ..400 run scoreboard players set $4_timeout state 1
execute if score $4_portal tick.general matches ..400 if score $4_finale state matches 0 run function main:state/4/finale

# 若时间已到
execute if score $4_portal tick.general matches ..0 run function main:state/5/enter