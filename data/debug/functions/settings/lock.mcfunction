data modify block ~1 ~ ~ Lock set value "别开谢谢"
data modify block ~ ~1 ~ Lock set value "别开谢谢"
data modify block ~ ~ ~1 Lock set value "别开谢谢"
data modify block ~-1 ~ ~ Lock set value "别开谢谢"
data modify block ~ ~-1 ~ Lock set value "别开谢谢"
data modify block ~ ~ ~-1 Lock set value "别开谢谢"
title @a[limit=1,sort=nearest] actionbar {"translate":"ms.debug.locked","fallback": "周围容器已锁定","color": "white"}