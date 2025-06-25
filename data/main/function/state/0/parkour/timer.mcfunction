# 理论上跑的人越多，服务器越卡
function main:state/0/parkour/time_format {source:"tick.parkour"}
title @s actionbar [{"translate":"ms.parkour.running","fallback":"跑酷进行中","color":"yellow"}," | ",{"storage":"ms:string","nbt":"result"}]