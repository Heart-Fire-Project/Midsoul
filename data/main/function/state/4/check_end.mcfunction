# 若守卫者不在
execute if entity @a[team=guardian] if score $noguar tick.general matches ..599 as @a unless score @s tick.using matches 1.. run title @s[tag=!status_display] actionbar ""
execute if entity @a[team=guardian] run scoreboard players set $noguar tick.general 600
execute unless entity @a[team=guardian] run function main:lib/event/no_guardian

# 若仅剩一未垂死灵魂 | 优先度小于守卫者掉线提示
execute if score $undying data matches 1 unless score $alive data matches 1 if entity @a[team=guardian] run function main:lib/event/last_undying

# 若灵魂已死光
execute unless entity @a[team=soul,scores={state=0}] as @a[team=guardian,scores={setting.instant_rating=1}] run function main:lib/rating/1/guardian/offense
execute unless entity @a[team=soul,scores={state=0}] unless entity @e[tag=open_purple] run scoreboard players set $guardian_offense data 240
execute unless entity @a[team=soul,scores={state=0}] if entity @e[tag=open_purple] run scoreboard players operation $guardian_offense data = $sec temp2
execute unless entity @a[team=soul,scores={state=0}] run function main:state/99/enter

# 剩余 42 秒，公布第三传送门位置
execute unless data entity @n[tag=purple_3rd] Glowing if score $4_portal tick.general matches ..840 run function main:state/4/announce_door

# 时间警告
execute if score $4_portal tick.general matches ..600 if score $4_timeout state matches 0 run title @a title ""
execute if score $4_portal tick.general matches ..600 if score $4_timeout state matches 0 run title @a subtitle [{text:"» ",color:"#C13435",bold:true},{translate:"ms.title.4.warn",fallback:"剩余 30 秒",bold:false},{text:" «",bold:true}]
execute if score $4_portal tick.general matches ..600 if score $4_timeout state matches 0 run playsound event.mob_effect.raid_omen player @a 0 1000000 0 120000
execute if score $4_portal tick.general matches ..600 run scoreboard players set $4_timeout state 1

# 若只剩一位存活或仅剩 20 秒，开启终局
execute if score $alive data matches 1 if score $4_finale state matches 0 run function main:state/4/finale
execute if score $4_portal tick.general matches ..600 if score $4_finale state matches 0 run function main:state/4/finale

# 若时间已到
execute if score $4_portal tick.general matches ..0 run function main:lib/rating/1/guardian/offense
execute if score $4_portal tick.general matches ..0 unless entity @e[tag=open_purple] run scoreboard players set $guardian_offense data 240
execute if score $4_portal tick.general matches ..0 if entity @e[tag=open_purple] run scoreboard players operation $guardian_offense data = $sec temp2
execute if score $4_portal tick.general matches ..0 run function main:state/99/enter