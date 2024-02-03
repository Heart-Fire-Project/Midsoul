summon marker ~ ~0.2 ~ {Tags:["marker_gray"]}
tp @e[tag=marker_gray,distance=..2] @s
execute as @e[tag=marker_gold,distance=..2] run title @a[sort=nearest,limit=1] actionbar {"translate":"ms.mark.summon.gray","fallback":"灵魂宝物箱 标记已生成","color":"#CCCCCC"}