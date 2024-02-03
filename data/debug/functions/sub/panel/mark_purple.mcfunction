summon marker ~ ~0.2 ~ {Tags:["marker_purple"]}
tp @e[tag=marker_purple,distance=..2] @s
execute as @e[tag=marker_purple,distance=..2] run title @a[sort=nearest,limit=1] actionbar {"translate":"ms.mark.summon.purple","fallback":"传送门 点位已生成","color":"light_purple"}