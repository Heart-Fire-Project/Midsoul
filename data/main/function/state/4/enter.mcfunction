# 阶段 4 - 充能/复活
scoreboard players set $state data 4

# 生成传送门
kill @e[tag=purple]
kill @e[tag=purple_progress]
function main:lib/event/summon/purple

# 播报传送门生成
title @a title ""
title @a subtitle {translate:"ms.title.4.portal",fallback:"⚜ 传送门已出现 ⚜",color:"#7367F0"}
playsound entity.warden.attack_impact player @a 0 1000000 0 120000 0.7

# 生成第三传送门？
execute if score $two_guardian state matches 1 run playsound entity.villager.work_toolsmith player @a 0 1000000 0 120000
execute if score $two_guardian state matches 1 run tellraw @a ["\n",{text:"🔧 ",color:"#9896F1"},{translate:"ms.info.two_guardian",fallback:"多守卫特殊机制",color:"#9896F1"},"\n",{translate:"ms.info.two_guardian.desc.3",fallback:"本局游戏中额外生成一个隐藏传送门"}]
execute if score $two_guardian state matches 1 run function main:state/4/purple_3rd

# 设置计时
scoreboard players set $4_finale state 0
scoreboard players set $4_timeout state 0
scoreboard players set $4_process tick.general 0
execute store result score $4_portal tick.general run data get storage ms:map original_goal
scoreboard players operation $4_portal tick.general *= #100 data
scoreboard players add $4_portal tick.general 1600

# 初始化 Bossbar
bossbar set midsoul:info style notched_12
bossbar set midsoul:heed style notched_12
bossbar set midsoul:warn style notched_12
execute store result bossbar midsoul:info max run scoreboard players get $4_portal tick.general
execute store result bossbar midsoul:heed max run scoreboard players get $4_portal tick.general
execute store result bossbar midsoul:warn max run scoreboard players get $4_portal tick.general

# 设置速度
execute as @a[team=guardian,scores={state=0}] run attribute @s movement_speed base set 0.14
execute if score $echo data matches 6 as @a[team=soul,scores={state=0}] run attribute @s movement_speed base set 0.175
execute if score $echo data matches 6 as @a[team=guardian,scores={state=0}] run attribute @s movement_speed base set 0.21

# 回响效果
execute if score $echo data matches 8 run scoreboard players set @e[tag=purple] tick.general 999999999

# 教程
advancement grant @a[tag=game_player] only main:tutorial/interact/4
advancement grant @a[team=guardian] only main:tutorial/player/4