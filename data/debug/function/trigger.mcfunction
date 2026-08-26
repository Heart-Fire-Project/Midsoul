# 切换设置页
execute as @s[scores={detect.interact=-1}] run function debug:panel/1
execute as @s[scores={detect.interact=-2}] run function debug:panel/2
execute as @s[scores={detect.interact=-3}] run function debug:panel/3
execute as @s[scores={detect.interact=-4}] run function debug:panel/4

# 主要选项
tellraw @s[scores={detect.interact=-999..-100}] "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n "
execute as @s[scores={detect.interact=-777}] run function debug:leave_admin
execute as @s[scores={detect.interact=-888}] run function debug:end_game
execute as @s[scores={detect.interact=-999}] run function main:init

## 设定
# 模式
execute as @s[scores={detect.interact=-1101}] run function debug:sub/select {type:"mode",num:"1"}
execute as @s[scores={detect.interact=-1102}] run function debug:sub/select {type:"mode",num:"2"}

# 地图
execute as @s[scores={detect.interact=-1200}] run function debug:sub/select {type:"map",num:"0"}
execute as @s[scores={detect.interact=-1201}] run function debug:sub/select {type:"map",num:"1"}
execute as @s[scores={detect.interact=-1202}] run function debug:sub/select {type:"map",num:"2"}
execute as @s[scores={detect.interact=-1203}] run function debug:sub/select {type:"map",num:"3"}
execute as @s[scores={detect.interact=-1204}] run function debug:sub/select {type:"map",num:"4"}
execute as @s[scores={detect.interact=-1205}] run function debug:sub/select {type:"map",num:"5"}
execute as @s[scores={detect.interact=-1206}] run function debug:sub/select {type:"map",num:"6"}
execute as @s[scores={detect.interact=-1298..-1297}] run scoreboard players operation $value temp = $map_max data
execute as @s[scores={detect.interact=-1298..-1297}] run scoreboard players operation $value temp /= #6 data
execute as @s[scores={detect.interact=-1298..-1297}] run scoreboard players operation $valueA temp = $map_max data
execute as @s[scores={detect.interact=-1298..-1297}] run scoreboard players operation $valueA temp %= #6 data
execute as @s[scores={detect.interact=-1298..-1297}] unless score $valueA temp matches 0 run scoreboard players add $value temp 1
execute as @s[scores={detect.interact=-1297}] run function debug:sub/prev {type:"debug_map",max:"1"}
execute as @s[scores={detect.interact=-1298}] run scoreboard players add $value temp 1
execute as @s[scores={detect.interact=-1298}] store result storage ms:temp limit int 1 run scoreboard players get $value temp
execute as @s[scores={detect.interact=-1298}] run data merge storage ms:temp {type:"debug_map"}
execute as @s[scores={detect.interact=-1298}] run function debug:sub/next with storage ms:temp
execute as @s[scores={detect.interact=-1299}] run function debug:sub/setting/map_tp

# 回响
execute as @s[scores={detect.interact=-1301}] run function debug:sub/chance_minus {type:"echo"}
execute as @s[scores={detect.interact=-1302}] run function debug:sub/chance_add {type:"echo"}
execute as @s[scores={detect.interact=-1300}] run function debug:sub/chance_select {type:"echo",value:"0"}
execute as @s[scores={detect.interact=-1330}] run function debug:sub/chance_select {type:"echo",value:"30"}
execute as @s[scores={detect.interact=-1370}] run function debug:sub/chance_select {type:"echo",value:"70"}
execute as @s[scores={detect.interact=-1399}] run function debug:sub/chance_select {type:"echo",value:"100"}
execute as @s[scores={detect.interact=-1400}] run function debug:sub/setting/echo_all
execute as @s[scores={detect.interact=-1401}] run function debug:sub/binary {storage:"echo",target:"01"}
execute as @s[scores={detect.interact=-1402}] run function debug:sub/binary {storage:"echo",target:"02"}
execute as @s[scores={detect.interact=-1403}] run function debug:sub/binary {storage:"echo",target:"03"}
execute as @s[scores={detect.interact=-1404}] run function debug:sub/binary {storage:"echo",target:"04"}
execute as @s[scores={detect.interact=-1405}] run function debug:sub/binary {storage:"echo",target:"05"}
execute as @s[scores={detect.interact=-1406}] run function debug:sub/binary {storage:"echo",target:"06"}
execute as @s[scores={detect.interact=-1407}] run function debug:sub/binary {storage:"echo",target:"07"}
execute as @s[scores={detect.interact=-1408}] run function debug:sub/binary {storage:"echo",target:"08"}
execute as @s[scores={detect.interact=-1409}] run function debug:sub/binary {storage:"echo",target:"09"}
execute as @s[scores={detect.interact=-1410}] run function debug:sub/binary {storage:"echo",target:"10"}
execute as @s[scores={detect.interact=-1498..-1497}] run scoreboard players operation $value temp = $echo_max data
execute as @s[scores={detect.interact=-1498..-1497}] run scoreboard players operation $value temp /= #5 data
execute as @s[scores={detect.interact=-1498..-1497}] run scoreboard players operation $valueA temp = $echo_max data
execute as @s[scores={detect.interact=-1498..-1497}] run scoreboard players operation $valueA temp %= #5 data
execute as @s[scores={detect.interact=-1498..-1497}] unless score $valueA temp matches 0 run scoreboard players add $value temp 1
execute as @s[scores={detect.interact=-1497}] run function debug:sub/prev {type:"debug_echo",max:"1"}
execute as @s[scores={detect.interact=-1498}] run scoreboard players add $value temp 1
execute as @s[scores={detect.interact=-1498}] store result storage ms:temp limit int 1 run scoreboard players get $value temp
execute as @s[scores={detect.interact=-1498}] run data merge storage ms:temp {type:"debug_echo"}
execute as @s[scores={detect.interact=-1498}] run function debug:sub/next with storage ms:temp

# 分配
execute as @s[scores={detect.interact=-1501}] run function debug:sub/next {type:"ability_assign",limit:"6"}
execute as @s[scores={detect.interact=-1502}] run function debug:sub/next {type:"role_assign",limit:"4"}

# 管理
execute as @s[scores={detect.interact=-1601}] run function debug:sub/binary {storage:"setting",target:"setting_lock"}
execute as @s[scores={detect.interact=-1602}] run function debug:sub/binary {storage:"setting",target:"game_lock"}
execute as @s[scores={detect.interact=-1603}] run function debug:sub/binary {storage:"setting",target:"hide_rating"}

## 对局
# 地图
execute as @s[scores={detect.interact=-2101}] run function debug:sub/game/switch_map_pre {value:"1"}
execute as @s[scores={detect.interact=-2102}] run function debug:sub/game/switch_map_pre {value:"2"}
execute as @s[scores={detect.interact=-2103}] run function debug:sub/game/switch_map_pre {value:"3"}
execute as @s[scores={detect.interact=-2104}] run function debug:sub/game/switch_map_pre {value:"4"}
execute as @s[scores={detect.interact=-2105}] run function debug:sub/game/switch_map_pre {value:"5"}
execute as @s[scores={detect.interact=-2106}] run function debug:sub/game/switch_map_pre {value:"6"}
execute as @s[scores={detect.interact=-2198..-2197}] run scoreboard players operation $value temp = $map_max data
execute as @s[scores={detect.interact=-2198..-2197}] run scoreboard players operation $value temp /= #6 data
execute as @s[scores={detect.interact=-2198..-2197}] run scoreboard players operation $valueA temp = $map_max data
execute as @s[scores={detect.interact=-2198..-2197}] run scoreboard players operation $valueA temp %= #6 data
execute as @s[scores={detect.interact=-2198..-2197}] unless score $valueA temp matches 0 run scoreboard players add $value temp 1
execute as @s[scores={detect.interact=-2197}] run function debug:sub/prev {type:"debug_map",max:"1"}
execute as @s[scores={detect.interact=-2198}] run scoreboard players add $value temp 1
execute as @s[scores={detect.interact=-2198}] store result storage ms:temp limit int 1 run scoreboard players get $value temp
execute as @s[scores={detect.interact=-2198}] run data merge storage ms:temp {type:"debug_map"}
execute as @s[scores={detect.interact=-2198}] run function debug:sub/next with storage ms:temp

# 回响
execute as @s[scores={detect.interact=-2200}] if score $state data matches 3..98 run function debug:sub/game/switch_echo {value:"00"}
execute as @s[scores={detect.interact=-2201}] if score $state data matches 3..98 run function debug:sub/game/switch_echo {value:"01"}
execute as @s[scores={detect.interact=-2202}] if score $state data matches 3..98 run function debug:sub/game/switch_echo {value:"02"}
execute as @s[scores={detect.interact=-2203}] if score $state data matches 3..98 run function debug:sub/game/switch_echo {value:"03"}
execute as @s[scores={detect.interact=-2204}] if score $state data matches 3..98 run function debug:sub/game/switch_echo {value:"04"}
execute as @s[scores={detect.interact=-2205}] if score $state data matches 3..98 run function debug:sub/game/switch_echo {value:"05"}
execute as @s[scores={detect.interact=-2206}] if score $state data matches 3..98 run function debug:sub/game/switch_echo {value:"06"}
execute as @s[scores={detect.interact=-2207}] if score $state data matches 3..98 run function debug:sub/game/switch_echo {value:"07"}
execute as @s[scores={detect.interact=-2208}] if score $state data matches 3..98 run function debug:sub/game/switch_echo {value:"08"}
execute as @s[scores={detect.interact=-2209}] if score $state data matches 3..98 run function debug:sub/game/switch_echo {value:"09"}
execute as @s[scores={detect.interact=-2210}] if score $state data matches 3..98 run function debug:sub/game/switch_echo {value:"10"}
execute as @s[scores={detect.interact=-2298..-2297}] run scoreboard players operation $value temp = $echo_max data
execute as @s[scores={detect.interact=-2298..-2297}] run scoreboard players operation $value temp /= #5 data
execute as @s[scores={detect.interact=-2298..-2297}] run scoreboard players operation $valueA temp = $echo_max data
execute as @s[scores={detect.interact=-2298..-2297}] run scoreboard players operation $valueA temp %= #5 data
execute as @s[scores={detect.interact=-2298..-2297}] unless score $valueA temp matches 0 run scoreboard players add $value temp 1
execute as @s[scores={detect.interact=-2297}] run function debug:sub/prev {type:"debug_echo",max:"1"}
execute as @s[scores={detect.interact=-2298}] run scoreboard players add $value temp 1
execute as @s[scores={detect.interact=-2298}] store result storage ms:temp limit int 1 run scoreboard players get $value temp
execute as @s[scores={detect.interact=-2298}] run data merge storage ms:temp {type:"debug_echo"}
execute as @s[scores={detect.interact=-2298}] run function debug:sub/next with storage ms:temp

# 速率
execute as @s[scores={detect.interact=-2300}] run function debug:sub/speed_minus {type:"interact"}
execute as @s[scores={detect.interact=-2301}] run function debug:sub/speed_add {type:"interact"}
execute as @s[scores={detect.interact=-2310}] run function debug:sub/speed_select {type:"interact",value:"100"}
execute as @s[scores={detect.interact=-2320}] run function debug:sub/speed_select {type:"interact",value:"200"}
execute as @s[scores={detect.interact=-2350}] run function debug:sub/speed_select {type:"interact",value:"500"}
execute as @s[scores={detect.interact=-2390}] run function debug:sub/speed_select {type:"interact",value:"1000"}
execute as @s[scores={detect.interact=-2399}] run function debug:sub/speed_select {type:"interact",value:"1010000"}
execute as @s[scores={detect.interact=-2400}] run function debug:sub/speed_minus {type:"cooldown"}
execute as @s[scores={detect.interact=-2401}] run function debug:sub/speed_add {type:"cooldown"}
execute as @s[scores={detect.interact=-2410}] run function debug:sub/speed_select {type:"cooldown",value:"100"}
execute as @s[scores={detect.interact=-2420}] run function debug:sub/speed_select {type:"cooldown",value:"200"}
execute as @s[scores={detect.interact=-2450}] run function debug:sub/speed_select {type:"cooldown",value:"500"}
execute as @s[scores={detect.interact=-2490}] run function debug:sub/speed_select {type:"cooldown",value:"1000"}
execute as @s[scores={detect.interact=-2499}] run function debug:sub/speed_select {type:"cooldown",value:"1010000"}
execute as @s[scores={detect.interact=-2500}] run function debug:sub/game/restore_speed
execute as @s[scores={detect.interact=-2501}] run function debug:sub/binary {storage:"setting",target:"reset_speed"}

## 杂项
# 显示
execute as @s[scores={detect.interact=-3001}] run function debug:sub/binary {storage:"setting",target:"reduce_f3"}
execute as @s[scores={detect.interact=-3002}] run function debug:sub/binary {storage:"setting",target:"send_feedback"}

# 进程
execute as @s[scores={detect.interact=-3011}] run function debug:sub/other/start
execute as @s[scores={detect.interact=-3012}] run function debug:sub/other/all_prepare
execute as @s[scores={detect.interact=-3013}] run function debug:sub/other/start
execute as @s[scores={detect.interact=-3014}] run function debug:sub/other/rematch
execute as @s[scores={detect.interact=-3015}] run function debug:sub/other/add_aura
execute as @s[scores={detect.interact=-3016}] run function debug:sub/other/next_state
execute as @s[scores={detect.interact=-3017}] run function debug:sub/other/ending
execute as @s[scores={detect.interact=-3018}] run function debug:sub/other/finale
execute as @s[scores={detect.interact=-3031}] run scoreboard players set $shard_collect data 0
execute as @s[scores={detect.interact=-3032}] run scoreboard players remove $shard_collect data 3
execute as @s[scores={detect.interact=-3033}] run scoreboard players remove $shard_collect data 1
execute as @s[scores={detect.interact=-3034}] run scoreboard players add $shard_collect data 1
execute as @s[scores={detect.interact=-3035}] run scoreboard players add $shard_collect data 3
execute as @s[scores={detect.interact=-3041}] run scoreboard players remove $4_portal tick.general 300
execute as @s[scores={detect.interact=-3042}] run scoreboard players add $4_portal tick.general 400
execute as @s[scores={detect.interact=-3043}] run scoreboard players add $4_portal tick.general 1200
execute as @s[scores={detect.interact=-3044}] run function debug:sub/other/portal_max
execute as @s[scores={detect.interact=-3045}] run scoreboard players set $4_portal tick.general 631152000
execute as @s[scores={detect.interact=-3989..-3010}] run function debug:panel/3

## 自定义
# 地图
execute as @s[scores={detect.interact=-4101}] run function debug:sub/select {type:"map",num:"-1"}
execute as @s[scores={detect.interact=-4102}] run function debug:sub/select {type:"map",num:"-2"}
execute as @s[scores={detect.interact=-4103}] run function debug:sub/select {type:"map",num:"-3"}
execute as @s[scores={detect.interact=-4104}] run function debug:sub/select {type:"map",num:"-4"}
execute as @s[scores={detect.interact=-4105}] run function debug:sub/select {type:"map",num:"-5"}
execute as @s[scores={detect.interact=-4106}] run function debug:sub/select {type:"map",num:"-6"}
execute as @s[scores={detect.interact=-4107}] run function debug:sub/select {type:"map",num:"-7"}
execute as @s[scores={detect.interact=-4108}] run function debug:sub/select {type:"map",num:"-8"}
execute as @s[scores={detect.interact=-4109}] run function debug:sub/select {type:"map",num:"-9"}
execute as @s[scores={detect.interact=-4200}] run function debug:sub/custom/enter_edit
execute as @s[scores={detect.interact=-4201}] run function debug:sub/binary {storage:"setting",target:"random_custom"}

# 回响
execute as @s[scores={detect.interact=-4300}] run function debug:sub/binary {storage:"setting",target:"show_mark"}
give @s[scores={detect.interact=-4301}] warden_spawn_egg[custom_name={translate:"ms.blue",fallback:"灵魂碎片",color:"#50A7D9",italic:false},entity_data={id:"shulker",Color:11,Tags:[summon_marker,summon_blue]}]
give @s[scores={detect.interact=-4302}] blaze_spawn_egg[custom_name={translate:"ms.gold",fallback:"灵魂之灯",color:"gold",italic:false},entity_data={id:"shulker",Color:1,Tags:[summon_marker,summon_gold]}]
give @s[scores={detect.interact=-4303}] evoker_spawn_egg[custom_name={translate:"ms.gray",fallback:"灵魂宝物盒",color:"gray",italic:false},entity_data={id:"shulker",Color:8,Tags:[summon_marker,summon_gray]}]
give @s[scores={detect.interact=-4304}] breeze_spawn_egg[custom_name={translate:"ms.purple",fallback:"传送门",color:"light_purple",italic:false},entity_data={id:"shulker",Color:2,Tags:[summon_marker,summon_purple]}]
give @s[scores={detect.interact=-4305}] sulfur_cube_spawn_egg[custom_name={translate:"ms.block",fallback:"交互阻断",color:"#ECF390",italic:false},entity_data={id:"shulker",Color:4,Tags:[summon_marker,summon_block]}]
give @s[scores={detect.interact=-4306}] strider_spawn_egg[custom_name={translate:"ms.red",fallback:"删除标记",color:"red",italic:false},entity_data={id:"shulker",Color:14,Tags:[summon_marker,summon_red]}]
give @s[scores={detect.interact=-4307}] ghast_spawn_egg[custom_name={translate:"ms.lock",fallback:"容器上锁",color:"white",italic:false},entity_data={id:"shulker",Color:0,Tags:[summon_marker,summon_lock]}]
give @s[scores={detect.interact=-4308}] slime_spawn_egg[custom_name={translate:"ms.turn",fallback:"灵灯转向",color:"#85C077",italic:false},entity_data={id:"shulker",Color:5,Tags:[summon_marker,summon_turn]}]
execute as @s[scores={detect.interact=-4398}] at @s run function debug:sub/mark/invulnerable
execute as @s[scores={detect.interact=-4399}] at @s run function debug:sub/mark/count

scoreboard players set @s detect.interact 0