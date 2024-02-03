summon marker ~ ~0.2 ~ {Tags:["marker_gold"]}
tp @e[tag=marker_gold,distance=..2] @s
execute as @e[tag=marker_gold,distance=..2] run title @a[sort=nearest,limit=1] actionbar {"translate":"ms.mark.summon.gold","fallback":"灵魂之灯 点位已生成","color":"gold"}