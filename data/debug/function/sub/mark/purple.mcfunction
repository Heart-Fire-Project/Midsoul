summon marker ~ ~0.2 ~ {Tags:[marker_purple]}
tp @e[tag=marker_purple,distance=..2] @s
execute as @e[tag=marker_purple,distance=..2] run title @n[team=admin,type=player] actionbar [{translate:"ms.purple",fallback:"传送门",color:"light_purple"}," ",{translate:"ms.mark.summon",fallback:"点位已生成"}]