summon marker ~ ~0.2 ~ {Tags:["marker_black"]}
tp @e[tag=marker_black,distance=..2] @s
execute as @e[tag=marker_gold,distance=..2] run title @a[sort=nearest,limit=1] actionbar {"translate":"ms.debug.summon.black","fallback": "柜子 标记已生成","color": "gold"}