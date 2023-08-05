summon marker ~ ~0.2 ~ {Tags:["marker_gold"]}
tp @e[tag=marker_gold,distance=..2] @s
execute as @e[tag=marker_gold,distance=..2] run title @a[distance=..0.2] actionbar {"translate":"ms.debug.summon.gold","fallback": "灵魂之灯 点位已生成","color": "gold"}