tp @e[type=marker,distance=..2] @s
kill @e[type=marker,distance=..0.2]
title @n[team=admin,type=player,distance=..5] actionbar {translate:"ms.mark.delete",fallback:"邻近点位已经删除",color:"red"}