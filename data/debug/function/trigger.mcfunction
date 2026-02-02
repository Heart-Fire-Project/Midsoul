# 切换设置页
execute if score @s detect.interact matches -1 run function debug:panel/1
execute if score @s detect.interact matches -2 run function debug:panel/2
execute if score @s detect.interact matches -3 run function debug:panel/3
execute if score @s detect.interact matches -4 run function debug:panel/4

# 主要选项
execute if score @s detect.interact matches -999..-100 run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute if score @s detect.interact matches -777 run function debug:leave_admin
execute if score @s detect.interact matches -888 run function debug:end_game
execute if score @s detect.interact matches -999 run function main:init

## 设定
# 模式
execute if score @s detect.interact matches -1101 run function debug:sub/select {type:"mode",num:"1"}
execute if score @s detect.interact matches -1102 run function debug:sub/select {type:"mode",num:"2"}

# 地图
execute if score @s detect.interact matches -1200 run function debug:sub/select {type:"map",num:"0"}
execute if score @s detect.interact matches -1201 run function debug:sub/select {type:"map",num:"1"}
execute if score @s detect.interact matches -1202 run function debug:sub/select {type:"map",num:"2"}
execute if score @s detect.interact matches -1203 run function debug:sub/select {type:"map",num:"3"}
execute if score @s detect.interact matches -1204 run function debug:sub/select {type:"map",num:"4"}
execute if score @s detect.interact matches -1298..-1297 run scoreboard players operation $value temp = $map_max data
execute if score @s detect.interact matches -1298..-1297 run scoreboard players operation $value temp /= #6 data
execute if score @s detect.interact matches -1298..-1297 run scoreboard players operation $valueA temp = $map_max data
execute if score @s detect.interact matches -1298..-1297 run scoreboard players operation $valueA temp %= #6 data
execute if score @s detect.interact matches -1298..-1297 unless score $valueA temp matches 0 run scoreboard players add $value temp 1
execute if score @s detect.interact matches -1297 run function debug:sub/prev {type:"debug_map",max:"1"}
execute if score @s detect.interact matches -1298 run scoreboard players add $value temp 1
execute if score @s detect.interact matches -1298 store result storage ms:temp limit int 1 run scoreboard players get $value temp
execute if score @s detect.interact matches -1298 run data merge storage ms:temp {type:"debug_map"}
execute if score @s detect.interact matches -1298 run function debug:sub/next with storage ms:temp
execute if score @s detect.interact matches -1299 run function debug:sub/setting/map_tp

# 回响
execute if score @s detect.interact matches -1301 run function debug:sub/chance_minus {type:"echo"}
execute if score @s detect.interact matches -1302 run function debug:sub/chance_add {type:"echo"}
execute if score @s detect.interact matches -1300 run function debug:sub/chance_select {type:"echo",value:"0"}
execute if score @s detect.interact matches -1330 run function debug:sub/chance_select {type:"echo",value:"30"}
execute if score @s detect.interact matches -1370 run function debug:sub/chance_select {type:"echo",value:"70"}
execute if score @s detect.interact matches -1399 run function debug:sub/chance_select {type:"echo",value:"100"}
execute if score @s detect.interact matches -1400 run function debug:sub/setting/echo_all
execute if score @s detect.interact matches -1401 run function debug:sub/binary {storage:"echo",target:"01"}
execute if score @s detect.interact matches -1402 run function debug:sub/binary {storage:"echo",target:"02"}
execute if score @s detect.interact matches -1403 run function debug:sub/binary {storage:"echo",target:"03"}
execute if score @s detect.interact matches -1404 run function debug:sub/binary {storage:"echo",target:"04"}
execute if score @s detect.interact matches -1405 run function debug:sub/binary {storage:"echo",target:"05"}
execute if score @s detect.interact matches -1406 run function debug:sub/binary {storage:"echo",target:"06"}
execute if score @s detect.interact matches -1407 run function debug:sub/binary {storage:"echo",target:"07"}
execute if score @s detect.interact matches -1408 run function debug:sub/binary {storage:"echo",target:"08"}
execute if score @s detect.interact matches -1409 run function debug:sub/binary {storage:"echo",target:"09"}
execute if score @s detect.interact matches -1410 run function debug:sub/binary {storage:"echo",target:"10"}
execute if score @s detect.interact matches -1498..-1497 run scoreboard players operation $value temp = $echo_max data
execute if score @s detect.interact matches -1498..-1497 run scoreboard players operation $value temp /= #5 data
execute if score @s detect.interact matches -1498..-1497 run scoreboard players operation $valueA temp = $echo_max data
execute if score @s detect.interact matches -1498..-1497 run scoreboard players operation $valueA temp %= #5 data
execute if score @s detect.interact matches -1498..-1497 unless score $valueA temp matches 0 run scoreboard players add $value temp 1
execute if score @s detect.interact matches -1497 run function debug:sub/prev {type:"debug_echo",max:"1"}
execute if score @s detect.interact matches -1498 run scoreboard players add $value temp 1
execute if score @s detect.interact matches -1498 store result storage ms:temp limit int 1 run scoreboard players get $value temp
execute if score @s detect.interact matches -1498 run data merge storage ms:temp {type:"debug_echo"}
execute if score @s detect.interact matches -1498 run function debug:sub/next with storage ms:temp

# 分配
execute if score @s detect.interact matches -1501 run function debug:sub/next {type:"ability_assign",limit:"6"}
execute if score @s detect.interact matches -1502 run function debug:sub/next {type:"role_assign",limit:"4"}

# 管理
execute if score @s detect.interact matches -1601 run function debug:sub/binary {storage:"setting",target:setting_lock}
execute if score @s detect.interact matches -1602 run function debug:sub/binary {storage:"setting",target:game_lock}
execute if score @s detect.interact matches -1603 run function debug:sub/binary {storage:"setting",target:hide_rating}

## 对局
# 地图
execute if score @s detect.interact matches -2101 run function debug:sub/game/switch_map_pre {value:"1"}
execute if score @s detect.interact matches -2102 run function debug:sub/game/switch_map_pre {value:"2"}
execute if score @s detect.interact matches -2103 run function debug:sub/game/switch_map_pre {value:"3"}
execute if score @s detect.interact matches -2104 run function debug:sub/game/switch_map_pre {value:"4"}
execute if score @s detect.interact matches -2198..-2197 run scoreboard players operation $value temp = $map_max data
execute if score @s detect.interact matches -2198..-2197 run scoreboard players operation $value temp /= #6 data
execute if score @s detect.interact matches -2198..-2197 run scoreboard players operation $valueA temp = $map_max data
execute if score @s detect.interact matches -2198..-2197 run scoreboard players operation $valueA temp %= #6 data
execute if score @s detect.interact matches -2198..-2197 unless score $valueA temp matches 0 run scoreboard players add $value temp 1
execute if score @s detect.interact matches -2197 run function debug:sub/prev {type:"debug_map",max:"1"}
execute if score @s detect.interact matches -2198 run scoreboard players add $value temp 1
execute if score @s detect.interact matches -2198 store result storage ms:temp limit int 1 run scoreboard players get $value temp
execute if score @s detect.interact matches -2198 run data merge storage ms:temp {type:"debug_map"}
execute if score @s detect.interact matches -2198 run function debug:sub/next with storage ms:temp

# 回响
execute if score @s detect.interact matches -2200 if score $state data matches 3..98 run function debug:sub/game/switch_echo {value:"00"}
execute if score @s detect.interact matches -2201 if score $state data matches 3..98 run function debug:sub/game/switch_echo {value:"01"}
execute if score @s detect.interact matches -2202 if score $state data matches 3..98 run function debug:sub/game/switch_echo {value:"02"}
execute if score @s detect.interact matches -2203 if score $state data matches 3..98 run function debug:sub/game/switch_echo {value:"03"}
execute if score @s detect.interact matches -2204 if score $state data matches 3..98 run function debug:sub/game/switch_echo {value:"04"}
execute if score @s detect.interact matches -2205 if score $state data matches 3..98 run function debug:sub/game/switch_echo {value:"05"}
execute if score @s detect.interact matches -2206 if score $state data matches 3..98 run function debug:sub/game/switch_echo {value:"06"}
execute if score @s detect.interact matches -2207 if score $state data matches 3..98 run function debug:sub/game/switch_echo {value:"07"}
execute if score @s detect.interact matches -2208 if score $state data matches 3..98 run function debug:sub/game/switch_echo {value:"08"}
execute if score @s detect.interact matches -2209 if score $state data matches 3..98 run function debug:sub/game/switch_echo {value:"09"}
execute if score @s detect.interact matches -2210 if score $state data matches 3..98 run function debug:sub/game/switch_echo {value:"10"}
execute if score @s detect.interact matches -2298..-2297 run scoreboard players operation $value temp = $echo_max data
execute if score @s detect.interact matches -2298..-2297 run scoreboard players operation $value temp /= #5 data
execute if score @s detect.interact matches -2298..-2297 run scoreboard players operation $valueA temp = $echo_max data
execute if score @s detect.interact matches -2298..-2297 run scoreboard players operation $valueA temp %= #5 data
execute if score @s detect.interact matches -2298..-2297 unless score $valueA temp matches 0 run scoreboard players add $value temp 1
execute if score @s detect.interact matches -2297 run function debug:sub/prev {type:"debug_echo",max:"1"}
execute if score @s detect.interact matches -2298 run scoreboard players add $value temp 1
execute if score @s detect.interact matches -2298 store result storage ms:temp limit int 1 run scoreboard players get $value temp
execute if score @s detect.interact matches -2298 run data merge storage ms:temp {type:"debug_echo"}
execute if score @s detect.interact matches -2298 run function debug:sub/next with storage ms:temp

# 速率
execute if score @s detect.interact matches -2300 run function debug:sub/speed_minus {type:"interact"}
execute if score @s detect.interact matches -2301 run function debug:sub/speed_add {type:"interact"}
execute if score @s detect.interact matches -2310 run function debug:sub/speed_select {type:"interact",value:"100"}
execute if score @s detect.interact matches -2320 run function debug:sub/speed_select {type:"interact",value:"200"}
execute if score @s detect.interact matches -2350 run function debug:sub/speed_select {type:"interact",value:"500"}
execute if score @s detect.interact matches -2390 run function debug:sub/speed_select {type:"interact",value:"1000"}
execute if score @s detect.interact matches -2399 run function debug:sub/speed_select {type:"interact",value:"1010000"}
execute if score @s detect.interact matches -2400 run function debug:sub/speed_minus {type:"cooldown"}
execute if score @s detect.interact matches -2401 run function debug:sub/speed_add {type:"cooldown"}
execute if score @s detect.interact matches -2410 run function debug:sub/speed_select {type:"cooldown",value:"100"}
execute if score @s detect.interact matches -2420 run function debug:sub/speed_select {type:"cooldown",value:"200"}
execute if score @s detect.interact matches -2450 run function debug:sub/speed_select {type:"cooldown",value:"500"}
execute if score @s detect.interact matches -2490 run function debug:sub/speed_select {type:"cooldown",value:"1000"}
execute if score @s detect.interact matches -2499 run function debug:sub/speed_select {type:"cooldown",value:"1010000"}
execute if score @s detect.interact matches -2500 run function debug:sub/game/restore_speed
execute if score @s detect.interact matches -2501 run function debug:sub/binary {storage:"setting",target:reset_speed}

## 杂项
# 显示
execute if score @s detect.interact matches -3001 run function debug:sub/binary {storage:"setting",target:reduce_f3}
execute if score @s detect.interact matches -3002 run function debug:sub/binary {storage:"setting",target:send_feedback}

# 进程
execute if score @s detect.interact matches -3011 run function debug:sub/other/start
execute if score @s detect.interact matches -3012 run function debug:sub/other/all_prepare
execute if score @s detect.interact matches -3013 run function debug:sub/other/start
execute if score @s detect.interact matches -3014 run function debug:sub/other/rematch
execute if score @s detect.interact matches -3015 run function debug:sub/other/add_aura
execute if score @s detect.interact matches -3016 run function debug:sub/other/next_state
execute if score @s detect.interact matches -3017 run function debug:sub/other/ending
execute if score @s detect.interact matches -3018 run function debug:sub/other/finale
execute if score @s detect.interact matches -3031 run scoreboard players set $shard_collect data 0
execute if score @s detect.interact matches -3032 run scoreboard players remove $shard_collect data 3
execute if score @s detect.interact matches -3033 run scoreboard players remove $shard_collect data 1
execute if score @s detect.interact matches -3034 run scoreboard players add $shard_collect data 1
execute if score @s detect.interact matches -3035 run scoreboard players add $shard_collect data 3
execute if score @s detect.interact matches -3041 run scoreboard players remove $4_portal tick.general 300
execute if score @s detect.interact matches -3042 run scoreboard players add $4_portal tick.general 400
execute if score @s detect.interact matches -3043 run scoreboard players add $4_portal tick.general 1200
execute if score @s detect.interact matches -3044 run function debug:sub/other/portal_max
execute if score @s detect.interact matches -3045 run scoreboard players set $4_portal tick.general 631152000
execute if score @s detect.interact matches -3989..-3010 run function debug:panel/3

## 自定义
# 地图
execute if score @s detect.interact matches -4101 run function debug:sub/select {type:"map",num:"-1"}
execute if score @s detect.interact matches -4102 run function debug:sub/select {type:"map",num:"-2"}
execute if score @s detect.interact matches -4103 run function debug:sub/select {type:"map",num:"-3"}
execute if score @s detect.interact matches -4104 run function debug:sub/select {type:"map",num:"-4"}
execute if score @s detect.interact matches -4105 run function debug:sub/select {type:"map",num:"-5"}
execute if score @s detect.interact matches -4106 run function debug:sub/select {type:"map",num:"-6"}
execute if score @s detect.interact matches -4107 run function debug:sub/select {type:"map",num:"-7"}
execute if score @s detect.interact matches -4108 run function debug:sub/select {type:"map",num:"-8"}
execute if score @s detect.interact matches -4109 run function debug:sub/select {type:"map",num:"-9"}
execute if score @s detect.interact matches -4200 run function debug:sub/custom/enter_edit
execute if score @s detect.interact matches -4201 run function debug:sub/binary {storage:"setting",target:"random_custom"}

# 回响
execute if score @s detect.interact matches -4300 run function debug:sub/binary {storage:"setting",target:show_mark}
execute if score @s detect.interact matches -4301 run give @s warden_spawn_egg[custom_name={translate:"ms.blue",fallback:"灵魂碎片",color:"#50A7D9",italic:false},entity_data={id:shulker,Color:11,Tags:[summon_marker,summon_blue]}]
execute if score @s detect.interact matches -4302 run give @s blaze_spawn_egg[custom_name={translate:"ms.gold",fallback:"灵魂之灯",color:"gold",italic:false},entity_data={id:shulker,Color:1,Tags:[summon_marker,summon_gold]}]
execute if score @s detect.interact matches -4304 run give @s breeze_spawn_egg[custom_name={translate:"ms.purple",fallback:"传送门",color:"light_purple",italic:false},entity_data={id:shulker,Color:2,Tags:[summon_marker,summon_purple]}]
execute if score @s detect.interact matches -4303 run give @s evoker_spawn_egg[custom_name={translate:"ms.gray",fallback:"灵魂宝物盒",color:"gray",italic:false},entity_data={id:shulker,Color:8,Tags:[summon_marker,summon_gray]}]
execute if score @s detect.interact matches -4305 run give @s strider_spawn_egg[custom_name={translate:"ms.red",fallback:"删除标记",color:"red",italic:false},entity_data={id:shulker,Color:14,Tags:[summon_marker,summon_red]}]
execute if score @s detect.interact matches -4306 run give @s ghast_spawn_egg[custom_name={translate:"ms.lock",fallback:"容器上锁",color:"white",italic:false},entity_data={id:shulker,Color:0,Tags:[summon_marker,summon_lock]}]
execute if score @s detect.interact matches -4307 run give @s slime_spawn_egg[custom_name={translate:"ms.turn",fallback:"灵灯转向",color:"#85C077",italic:false},entity_data={id:shulker,Color:5,Tags:[summon_marker,summon_turn]}]
execute if score @s detect.interact matches -4399 at @s run function debug:sub/mark/count

scoreboard players set @s detect.interact 0