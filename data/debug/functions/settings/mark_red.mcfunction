tp @e[type=marker,distance=..2] @s
execute as @e[type=marker,distance=..0.2] run title @a[distance=..0.2] actionbar {"translate":"ms.debug.summon.red","fallback": "邻近点位已经删除","color": "red"}
kill @e[type=marker,distance=..0.2]