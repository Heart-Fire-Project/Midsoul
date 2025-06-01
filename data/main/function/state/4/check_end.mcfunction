# 若守卫者不在
execute if entity @a[team=guardian] if score $3_noguar countdown matches ..599 run title @a[team=!admin] actionbar ""
execute if entity @a[team=guardian] run scoreboard players set $3_noguar countdown 600
execute unless entity @a[team=guardian] run function main:state/3/event/no_guardian

# 若灵魂已死光
execute unless entity @a[team=soul,scores={state=0}] run function main:state/5/enter

# 若仅剩一位灵魂，应用自回
execute if score $alive data matches 1 if score $4_onesoul countdown matches 0 run tellraw @a[team=!admin] [{"text":"» ","color":"#CC81F0","bold":true},{"translate":"ms.info.4.onesoul","fallback":"灵气集聚 ⚜ 传送门将缓慢自动充能","bold":false}]
execute if score $alive data matches 1 if score $4_onesoul countdown matches 0 run playsound block.sculk_shrieker.shriek player @a[team=!admin] 0 1000000 0 1000000
execute if score $alive data matches 1 if score $4_onesoul countdown matches 0 run advancement grant @a[tag=game_player] only main:tutorial/mechanism/3
execute if score $alive data matches 1 if score $4_onesoul countdown matches 0 run scoreboard players set $4_onesoul countdown 1

# 若时间已到
execute if score $4_portal countdown matches ..0 run function main:state/5/enter