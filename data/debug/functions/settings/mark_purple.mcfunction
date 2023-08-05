summon marker ~ ~0.2 ~ {Tags:["marker_purple"]}
tp @e[tag=marker_purple,distance=..2] @s
execute as @e[tag=marker_purple,distance=..2] run title @a[distance=..0.2] actionbar {"translate":"ms.debug.summon.purple","fallback": "传送门 点位已生成","color": "light_purple"}