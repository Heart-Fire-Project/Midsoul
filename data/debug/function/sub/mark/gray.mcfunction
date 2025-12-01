summon marker ~ ~0.2 ~ {Tags:[marker_gray]}
tp @e[tag=marker_gray,distance=..2] @s
execute as @e[tag=marker_gray,distance=..2] run title @n[team=admin,type=player] actionbar [{translate:"ms.gray",fallback:"灵魂宝物盒",color:"gray"}," ",{translate:"ms.mark.summon",fallback:"点位已生成"}]