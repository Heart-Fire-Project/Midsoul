summon marker ~ ~0.2 ~ {Tags:["marker_blue"]}
tp @e[tag=marker_blue,distance=..2] @s
execute as @e[tag=marker_blue,distance=..2] run title @a[sort=nearest,limit=1] actionbar {"translate":"ms.mark.summon.blue","fallback":"灵魂碎片 点位已生成","color":"blue"}