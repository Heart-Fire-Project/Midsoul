execute unless entity @s[tag=hidden_parkour] run function main:state/0/parkour/time_format {source:"stat.parkour_5"}
execute if entity @s[tag=hidden_parkour] run function main:state/0/parkour/time_format {source:"stat.parkour_7"}

title @s[scores={tick.parkour=-42}] actionbar ""
title @s[scores={tick.parkour=-41}] actionbar [{translate:"ms.parkour.finish",fallback:"跑酷已完成",color:"green"}," | ",{storage:"ms:string",nbt:"result",interpret:true}]
playsound entity.breeze.charge player @s[scores={tick.parkour=-40}] 0 1000000 0 120000
title @s[scores={tick.parkour=-40}] actionbar ""
title @s[scores={tick.parkour=-39}] actionbar [{translate:"ms.parkour.finish",fallback:"跑酷已完成",color:"green"}," | ",{storage:"ms:string",nbt:"result",interpret:true}]
title @s[scores={tick.parkour=-38}] actionbar ""
title @s[scores={tick.parkour=-37}] actionbar [{translate:"ms.parkour.finish",fallback:"跑酷已完成",color:"green"}," | ",{storage:"ms:string",nbt:"result",interpret:true}]
title @s[scores={tick.parkour=-36}] actionbar ""
title @s[scores={tick.parkour=-35}] actionbar [{translate:"ms.parkour.finish",fallback:"跑酷已完成",color:"green"}," | ",{storage:"ms:string",nbt:"result",interpret:true}]
title @s[scores={tick.parkour=-34}] actionbar ""

execute as @s[scores={tick.parkour=-33}] at @s run particle totem_of_undying ~ ~0.2 ~ 0.1 0.1 0.1 0.5 1024 force @s
playsound item.totem.use player @s[scores={tick.parkour=-33}] 0 1000000 0 120000
title @s[scores={tick.parkour=-33}] actionbar [{text:"< ",color:"gold"},{translate:"ms.parkour.newpb",fallback:"新个人最佳"}," | ",{storage:"ms:string",nbt:"result",interpret:true}," >"]
title @s[scores={tick.parkour=-32}] actionbar [{text:"<< ",color:"gold"},{translate:"ms.parkour.newpb",fallback:"新个人最佳"}," | ",{storage:"ms:string",nbt:"result",interpret:true}," >>"]
title @s[scores={tick.parkour=-31}] actionbar [{text:"<<  ",color:"gold"},{translate:"ms.parkour.newpb",fallback:"新个人最佳"}," | ",{storage:"ms:string",nbt:"result",interpret:true},"  >>"]
title @s[scores={tick.parkour=-30}] actionbar [{text:"<<   ",color:"gold"},{translate:"ms.parkour.newpb",fallback:"新个人最佳"}," | ",{storage:"ms:string",nbt:"result",interpret:true},"   >>"]
title @s[scores={tick.parkour=-29}] actionbar [{text:"<<    ",color:"gold"},{translate:"ms.parkour.newpb",fallback:"新个人最佳"}," | ",{storage:"ms:string",nbt:"result",interpret:true},"    >>"]
title @s[scores={tick.parkour=-28}] actionbar [{text:"<<     ",color:"gold"},{translate:"ms.parkour.newpb",fallback:"新个人最佳"}," | ",{storage:"ms:string",nbt:"result",interpret:true},"     >>"]
title @s[scores={tick.parkour=-27}] actionbar [{text:"<<      ",color:"gold"},{translate:"ms.parkour.newpb",fallback:"新个人最佳"}," | ",{storage:"ms:string",nbt:"result",interpret:true},"      >>"]
title @s[scores={tick.parkour=-26}] actionbar [{text:"<       ",color:"gold"},{translate:"ms.parkour.newpb",fallback:"新个人最佳"}," | ",{storage:"ms:string",nbt:"result",interpret:true},"       >"]
title @s[scores={tick.parkour=-25}] actionbar [{translate:"ms.parkour.newpb",fallback:"新个人最佳",color:"gold"}," | ",{storage:"ms:string",nbt:"result",interpret:true}]
title @s[scores={tick.parkour=-21}] actionbar ""
title @s[scores={tick.parkour=-17}] actionbar [{translate:"ms.parkour.newpb",fallback:"新个人最佳",color:"gold"}," | ",{storage:"ms:string",nbt:"result",interpret:true}]
title @s[scores={tick.parkour=-13}] actionbar ""
title @s[scores={tick.parkour=-09}] actionbar [{translate:"ms.parkour.newpb",fallback:"新个人最佳",color:"gold"}," | ",{storage:"ms:string",nbt:"result",interpret:true}]
title @s[scores={tick.parkour=-05}] actionbar ""
title @s[scores={tick.parkour=-01}] actionbar [{translate:"ms.parkour.newpb",fallback:"新个人最佳",color:"gold"}," | ",{storage:"ms:string",nbt:"result",interpret:true}]
tag @s[scores={tick.parkour=-01}] remove hidden_parkour

scoreboard players add @s tick.parkour 1