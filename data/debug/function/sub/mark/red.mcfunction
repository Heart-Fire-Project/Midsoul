tp @e[type=marker,distance=..2] @s
kill @e[type=marker,distance=..0.2]
kill @e[type=interaction,distance=..2]
title @p[team=admin,distance=..5] actionbar {translate:"ms.mark.delete",fallback:"邻近点位已经删除",color:"red"}