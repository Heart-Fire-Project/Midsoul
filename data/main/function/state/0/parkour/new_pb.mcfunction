execute unless entity @s[tag=hidden_parkour] run function main:state/0/parkour/time_format {source:"stat.parkour_5"}
execute if entity @s[tag=hidden_parkour] run function main:state/0/parkour/time_format {source:"stat.parkour_7"}

execute if score @s tick.parkour matches -42 run title @s actionbar ""
execute if score @s tick.parkour matches -41 run title @s actionbar [{translate:"ms.parkour.finish",fallback:"跑酷已完成",color:"green"}," | ",{storage:"ms:string",nbt:"result"}]
execute if score @s tick.parkour matches -40 run playsound entity.breeze.charge player @s 0 1000000 0 120000
execute if score @s tick.parkour matches -40 run title @s actionbar ""
execute if score @s tick.parkour matches -39 run title @s actionbar [{translate:"ms.parkour.finish",fallback:"跑酷已完成",color:"green"}," | ",{storage:"ms:string",nbt:"result"}]
execute if score @s tick.parkour matches -38 run title @s actionbar ""
execute if score @s tick.parkour matches -37 run title @s actionbar [{translate:"ms.parkour.finish",fallback:"跑酷已完成",color:"green"}," | ",{storage:"ms:string",nbt:"result"}]
execute if score @s tick.parkour matches -36 run title @s actionbar ""
execute if score @s tick.parkour matches -35 run title @s actionbar [{translate:"ms.parkour.finish",fallback:"跑酷已完成",color:"green"}," | ",{storage:"ms:string",nbt:"result"}]
execute if score @s tick.parkour matches -34 run title @s actionbar ""

execute at @s if score @s tick.parkour matches -33 run particle totem_of_undying ~ ~0.2 ~ 0.1 0.1 0.1 0.5 1024 force @s
execute if score @s tick.parkour matches -33 run playsound item.totem.use player @s 0 1000000 0 120000
execute if score @s tick.parkour matches -33 run title @s actionbar [{text:"< ",color:"gold"},{translate:"ms.parkour.newpb",fallback:"新个人最佳"}," | ",{storage:"ms:string",nbt:"result"}," >"]
execute if score @s tick.parkour matches -32 run title @s actionbar [{text:"<< ",color:"gold"},{translate:"ms.parkour.newpb",fallback:"新个人最佳"}," | ",{storage:"ms:string",nbt:"result"}," >>"]
execute if score @s tick.parkour matches -31 run title @s actionbar [{text:"<<  ",color:"gold"},{translate:"ms.parkour.newpb",fallback:"新个人最佳"}," | ",{storage:"ms:string",nbt:"result"},"  >>"]
execute if score @s tick.parkour matches -30 run title @s actionbar [{text:"<<   ",color:"gold"},{translate:"ms.parkour.newpb",fallback:"新个人最佳"}," | ",{storage:"ms:string",nbt:"result"},"   >>"]
execute if score @s tick.parkour matches -29 run title @s actionbar [{text:"<<    ",color:"gold"},{translate:"ms.parkour.newpb",fallback:"新个人最佳"}," | ",{storage:"ms:string",nbt:"result"},"    >>"]
execute if score @s tick.parkour matches -28 run title @s actionbar [{text:"<<     ",color:"gold"},{translate:"ms.parkour.newpb",fallback:"新个人最佳"}," | ",{storage:"ms:string",nbt:"result"},"     >>"]
execute if score @s tick.parkour matches -27 run title @s actionbar [{text:"<<      ",color:"gold"},{translate:"ms.parkour.newpb",fallback:"新个人最佳"}," | ",{storage:"ms:string",nbt:"result"},"      >>"]
execute if score @s tick.parkour matches -26 run title @s actionbar [{text:"<       ",color:"gold"},{translate:"ms.parkour.newpb",fallback:"新个人最佳"}," | ",{storage:"ms:string",nbt:"result"},"       >"]
execute if score @s tick.parkour matches -25 run title @s actionbar [{translate:"ms.parkour.newpb",fallback:"新个人最佳",color:"gold"}," | ",{storage:"ms:string",nbt:"result"}]
execute if score @s tick.parkour matches -21 run title @s actionbar ""
execute if score @s tick.parkour matches -17 run title @s actionbar [{translate:"ms.parkour.newpb",fallback:"新个人最佳",color:"gold"}," | ",{storage:"ms:string",nbt:"result"}]
execute if score @s tick.parkour matches -13 run title @s actionbar ""
execute if score @s tick.parkour matches -09 run title @s actionbar [{translate:"ms.parkour.newpb",fallback:"新个人最佳",color:"gold"}," | ",{storage:"ms:string",nbt:"result"}]
execute if score @s tick.parkour matches -05 run title @s actionbar ""
execute if score @s tick.parkour matches -01 run title @s actionbar [{translate:"ms.parkour.newpb",fallback:"新个人最佳",color:"gold"}," | ",{storage:"ms:string",nbt:"result"}]
execute if score @s tick.parkour matches -01 run tag @s remove hidden_parkour

scoreboard players add @s tick.parkour 1