# 杂项 - 乱七八糟
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

# 同步改变了 gamerule 的设定
execute store result storage ms:setting reduce_f3 byte 1 run gamerule reduced_debug_info
execute store result storage ms:setting send_feedback byte 1 run gamerule send_command_feedback

# 信息
tellraw @s {text:"午夜灵魂 // Midnight Soul",color:"#988FF4"}
tellraw @s ["Version 2.0.0 Beta 10.X (",{score:{name:"$build",objective:"data"}},")"]
tellraw @s {translate:"ms.version",fallback:"未装载语言包"}
tellraw @s {translate:"ms.copyright",fallback:"© 2022-2025 心火计划"}
tellraw @s ""

# 显示
tellraw @s {translate:"ms.debug.display",fallback:"显示 »",color:"#988FF4"}
execute if data storage ms:setting {reduce_f3:false} run summon marker ~ ~ ~ {CustomName:[{text:"[",color:"gray"},{translate:"ms.debug.reduce_f3",fallback:"精简调试信息"},{text:"]"}],Tags:[setting-1,debug_entity]}
execute if data storage ms:setting {reduce_f3:true} run summon marker ~ ~ ~ {CustomName:[{text:"[",color:"green"},{translate:"ms.debug.reduce_f3",fallback:"精简调试信息"},{text:"]"}],Tags:[setting-1,debug_entity]}
execute if data storage ms:setting {send_feedback:false} run summon marker ~ ~ ~ {CustomName:[{text:"[",color:"gray"},{translate:"ms.debug.send_feedback",fallback:"发送命令反馈"},{text:"]"}],Tags:[setting-2,debug_entity]}
execute if data storage ms:setting {send_feedback:true} run summon marker ~ ~ ~ {CustomName:[{text:"[",color:"green"},{translate:"ms.debug.send_feedback",fallback:"发送命令反馈"},{text:"]"}],Tags:[setting-2,debug_entity]}
tellraw @s ["",{selector:"@e[tag=setting-1]",click_event:{action:"run_command",command:"trigger detect.interact set -3001"},hover_event:{action:"show_text",value:{translate:"ms.debug.reduce_f3.desc",fallback:"使 F3 中不会显示坐标等信息，同时禁用碰撞箱显示"}}}," ",{selector:"@e[tag=setting-2]",click_event:{action:"run_command",command:"trigger detect.interact set -3002"},hover_event:{action:"show_text",value:{translate:"ms.debug.send_feedback.desc",fallback:"使游戏在玩家运行命令时发送反馈"}}}]

# 进程
tellraw @s {translate:"ms.debug.process",fallback:"进程 »",color:"#988FF4"}
tellraw @s ["",{translate:"ms.debug.force_start",fallback:"[强制开始]",color:"#9DDFFB",click_event:{action:"run_command",command:"trigger detect.interact set -3101"},hover_event:{action:"show_text",value:{translate:"ms.debug.start.desc",fallback:"即刻进入初始阶段（视所有非管理员玩家为已准备）"}}}," ",{translate:"ms.debug.rematch",fallback:"[当局重赛]",color:"#A2D0F9",click_event:{action:"run_command",command:"trigger detect.interact set -3102"},hover_event:{action:"show_text",value:{translate:"ms.debug.rematch.desc",fallback:"即刻重新进入入场阶段"}}}," ",{translate:"ms.debug.aura4",fallback:"[触发满溢]",color:"#A7C2F8",click_event:{action:"run_command",command:"trigger detect.interact set -3103"},hover_event:{action:"show_text",value:{translate:"ms.debug.aura4.desc",fallback:"即刻触发灵气满溢机制"}}}," ",{translate:"ms.debug.state4",fallback:"[进入充能]",color:"#ACB3F6",click_event:{action:"run_command",command:"trigger detect.interact set -3104"},hover_event:{action:"show_text",value:{translate:"ms.debug.state4.desc",fallback:"即刻进入充能阶段"}}}," ",{translate:"ms.debug.end",fallback:"[直接结算]",color:"#B1A4F4",click_event:{action:"run_command",command:"trigger detect.interact set -3105"},hover_event:{action:"show_text",value:{translate:"ms.debug.end.desc",fallback:"即刻进入结算阶段（剩余灵魂不会消亡/复活）"}}}]
tellraw @s ["",{translate:"ms.debug.state4_time",fallback:"充能/复活倒计时"},"  »  ",{text:"[-15s]",click_event:{action:"run_command",command:"trigger detect.interact set -3201"}}," ",{text:"[+20s]",click_event:{action:"run_command",command:"trigger detect.interact set -3202"}}," ",{text:"[+60s]",click_event:{action:"run_command",command:"trigger detect.interact set -3203"}}," ",{text:"[Max]",click_event:{action:"run_command",command:"trigger detect.interact set -3204"}}," ",{text:"[1Yr.]",click_event:{action:"run_command",command:"trigger detect.interact set -3205"}}]

# 数据
tellraw @s {translate:"ms.debug.data",fallback:"数据 »",color:"#988FF4"}
tellraw @s ["",{translate:"ms.debug.data_trans",fallback:"[数据转移]",color:"white",click_event:{action:"suggest_command",command:"/function main:data_transform {from:\u0022PLAYER\u0022,to:\u0022PLAYER\u0022}"}}," ",{translate:"ms.debug.unlock_all",fallback:"[解锁全部装饰]",color:"white",click_event:{action:"suggest_command",command:"/advancement grant PLAYER from main:extra/root"}}]

tellraw @s ["\n",{translate:"ms.debug.other.desc",fallback:"可在此调整信息显示与游戏进程，亦可以操作数据"}]
tellraw @s [{text:"",color:"gray"},{text:" ◇ ",click_event:{action:"run_command",command:"trigger detect.interact set -1"}},{translate:"ms.debug.setting",fallback:"设定 ",click_event:{action:"run_command",command:"trigger detect.interact set -1"}},{text:"/",color:"white"},{text:" ◇ ",click_event:{action:"run_command",command:"trigger detect.interact set -2"}},{translate:"ms.debug.game",fallback:"对局 ",click_event:{action:"run_command",command:"trigger detect.interact set -2"}},{text:"/",color:"white"},{text:" ◆ ",color:"aqua",click_event:{action:"run_command",command:"trigger detect.interact set -3"}},{translate:"ms.debug.other",fallback:"杂项 ",color:"aqua",click_event:{action:"run_command",command:"trigger detect.interact set -3"}},{text:"/",color:"white"},{text:" ◇ ",click_event:{action:"run_command",command:"trigger detect.interact set -4"}},{translate:"ms.debug.custom",fallback:"自定义 ",click_event:{action:"run_command",command:"trigger detect.interact set -4"}}]
tellraw @s [{text:"",color:"#7367F0"},{text:"» ",bold:true},{translate:"ms.debug.panel",fallback:"午夜灵魂调试面板 V2"},{text:" » ",bold:true},{translate:"ms.debug.init",fallback:"[全局重置]",color:"red",click_event:{action:"run_command",command:"trigger detect.interact set -999"}}," ",{translate:"ms.debug.lobby",fallback:"[终止本局]",color:"gold",click_event:{action:"run_command",command:"trigger detect.interact set -888"}}," ",{translate:"ms.debug.leave_admin",fallback:"[退出 admin]",color:"light_purple",click_event:{action:"run_command",command:"trigger detect.interact set -777"}}]

kill @e[tag=debug_entity]
playsound ui.button.click player @s 0 1000000 0 120000