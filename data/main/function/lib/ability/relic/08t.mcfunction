# 砾石区域生效中
# 效果
execute as @a[team=guardian,distance=..3.5] store result score @s temp run data get entity @s Pos[1] 1000
execute store result score $min temp run data get entity @s Pos[1] 1000
scoreboard players operation $max temp = $min temp
scoreboard players add $max temp 2000
execute as @a[team=guardian,distance=..3.5] if score @s temp >= $min temp if score @s temp <= $max temp run tag @s add R08t
effect give @a[tag=R08t] slowness 1 2
scoreboard players set @a[tag=R08t,scores={tick.silent=..1}] tick.silent 2
scoreboard players set @a[tag=R08t,scores={tick.silent=..1}] tick.silent_max 2
tag @a remove R08t
scoreboard players add @s tick.general 1

# 音效
scoreboard players operation $value temp = @s tick.general
scoreboard players operation $value temp %= #8 data
execute if score $value temp matches 7 run playsound block.gravel.place player @a ~ ~ ~ 0.25

# 视效
function main:lib/ability/relic/08a
function main:lib/ability/relic/08a
function main:lib/ability/relic/08a
function main:lib/ability/relic/08a
function main:lib/ability/relic/08a

# 计时
scoreboard players operation $tick temp = @s tick.general
scoreboard players operation $tick temp *= #-1 data
function base:caculate/time {unit:"sec",tick:"$tick",source:"temp"}
scoreboard players operation $ms temp2 /= #10 data
scoreboard players add $ms temp2 1
execute if score $ms temp2 matches 10 run scoreboard players add $sec temp2 1
execute if score $ms temp2 matches 10 run scoreboard players set $ms temp2 0
data merge storage ms:string {A:"",B:"",C:"",D:".",E:""}
execute store result storage ms:string E int 1 run scoreboard players get $ms temp2
execute store result storage ms:string C int 1 run scoreboard players get $sec temp2
function base:craft_string with storage ms:string
data modify entity @s CustomName.text set from storage r7s:base string

# 处死
execute as @s[scores={tick.general=0..}] run particle block{block_state:{id:"smooth_stone"}} ~ ~0.1 ~ 0.1 0.1 0.1 1 24 force @a
execute as @s[scores={tick.general=0..}] on passengers run kill @s
kill @s[scores={tick.general=0..}]