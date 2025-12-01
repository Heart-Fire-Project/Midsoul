summon marker ~ ~0.2 ~ {Tags:[marker_gold]}
tp @e[tag=marker_gold,distance=..2] @s
execute as @e[tag=marker_gold,distance=..2] run title @n[team=admin,type=player] actionbar [{translate:"ms.gold",fallback:"灵魂之灯",color:"gold"}," ",{translate:"ms.mark.summon",fallback:"点位已生成"}]