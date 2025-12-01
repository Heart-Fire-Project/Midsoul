# 完成转换
scoreboard players operation @s temp2 = @s tick.parkour
scoreboard players set @s state 0
function main:state/0/parkour/time_format {source:"tick.parkour"}

# 完成特效
execute run summon firework_rocket ~ ~2 ~ {LifeTime:7,FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{flight_duration:1,explosions:[{has_twinkle:1b,has_trail:1b,shape:small_ball,colors:[6688755],fade_colors:[6648575]}]}}}}
execute anchored eyes positioned ^ ^ ^0.1 run particle flash{color:[1,1,1,1]} ~ ~ ~ 0 0 0 1 1 force @s

# 停止计时
title @s actionbar [{translate:"ms.parkour.finish",fallback:"跑酷已完成",color:"green"}," | ",{storage:"ms:string",nbt:"result"}]

# 展示成绩
tellraw @s [{text:"» ",bold:true,color:"gold"},{translate:"ms.parkour.7",fallback:"隐藏跑酷完成",bold:false}]
tellraw @s ["   ",{translate:"ms.parkour.time",fallback:"本次用时"}," » ",{storage:"ms:string",nbt:"result"}]
execute if entity @s[scores={stat.parkour_7=1..}] run function main:state/0/parkour/time_format {source:"stat.parkour_7"}
execute if score @s stat.parkour_7 matches ..0 run tellraw @s ["   ",{translate:"ms.parkour.pb",fallback:"个人最佳"}," » ","--:--.--"]
execute if score @s stat.parkour_7 matches 1.. run tellraw @s ["   ",{translate:"ms.parkour.pb",fallback:"个人最佳"}," » ",{storage:"ms:string",nbt:"result"}]

# 个人最佳
execute if score @s temp2 < @s stat.parkour_7 run scoreboard players set @s tick.parkour -54
execute if score @s stat.parkour_7 matches ..0 run scoreboard players set @s tick.parkour -54
execute if score @s tick.parkour matches -54 run scoreboard players operation @s stat.parkour_7 = @s temp2
tag @s[scores={tick.parkour=-54}] add hidden_parkour