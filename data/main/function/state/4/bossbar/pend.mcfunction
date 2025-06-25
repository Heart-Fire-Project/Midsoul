# 还分流
execute unless entity @e[tag=open_purple] run function main:state/4/bossbar/a
execute if entity @e[tag=open_purple] run function main:state/4/bossbar/b

# 通告
execute if score $4_portal tick.global matches 600 run title @a[team=!admin] title ""
execute if score $4_portal tick.global matches 600 run title @a[team=!admin] subtitle [{"text":"» ","color":"#C13435","bold":true},{"translate":"ms.title.4.warn","fallback":"剩余 30 秒","bold":false},{"text":" «","bold":true}]
execute if score $4_portal tick.global matches 600 run playsound event.mob_effect.raid_omen player @a[team=!admin] 0 1000000 0 1000000