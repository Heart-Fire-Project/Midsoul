# 公告栏
function base:merge_sign {x:"2",y:"1",z:"3",glow:"1",color:"white",trans_2:"ms.sign.contact",trans_3:"ms.sign.1",fallb_2:"[联系我们]",fallb_3:"> 交流与反馈 <",command:"trigger detect.interact set 1"}
function base:merge_sign {x:"1",y:"1",z:"3",glow:"1",color:"orange",trans_2:"ms.sign.major_update",trans_3:"ms.sign.2",fallb_2:"[重大更新]",fallb_3:"2.0 💠 混沌回响",command:"trigger detect.interact set 2"}
function base:merge_sign {x:"0",y:"1",z:"3",glow:"1",color:"light_blue",trans_2:"ms.sign.event",trans_3:"ms.sign.3",fallb_2:"[活动]",fallb_3:"午夜灵魂官方服务器",command:"trigger detect.interact set 3"}

# 鸣谢列表
function base:merge_sign {x:"-2",y:"11",z:"-9",glow:"1",color:"white",trans_2:"ms.credit.roser",trans_3:"ms.credit.1",fallb_2:"Roser",fallb_3:"架构者",command:"trigger detect.interact set 901"}
function base:merge_sign {x:"-4",y:"11",z:"-9",glow:"1",color:"white",trans_2:"ms.credit.seayay",trans_3:"ms.credit.2",fallb_2:"思遥方",fallb_3:"创想家",command:"trigger detect.interact set 902"}
function base:merge_sign {x:"-6",y:"11",z:"-9",glow:"1",color:"white",trans_2:"",trans_3:"ms.credit.yuzuki",fallb_2:"烛月yuzuki",fallb_3:"建筑师",command:"trigger detect.interact set 903"}
function base:merge_sign {x:"-8",y:"11",z:"-9",glow:"1",color:"white",trans_2:"ms.credit.translator",trans_3:"ms.credit.4",fallb_2:"--",fallb_3:"本地化",command:"trigger detect.interact set 904"}
function base:merge_sign {x:"-9",y:"11",z:"-8",glow:"1",color:"white",trans_2:"ms.credit.tester",trans_3:"",fallb_2:"测试人员",fallb_3:"",command:"trigger detect.interact set 905"}
function base:merge_sign {x:"-9",y:"11",z:"-6",glow:"1",color:"white",trans_2:"ms.credit.other",trans_3:"",fallb_2:"以及……",fallb_3:"",command:"trigger detect.interact set 906"}
function base:merge_sign {x:"-17",y:"11",z:"-8",glow:"1",color:"white",trans_2:"ms.credit.mol1sama",trans_3:"ms.credit.special_tester",fallb_2:"Mol1Sama",fallb_3:"特别测试",command:"trigger detect.interact set 907"}
function base:merge_sign {x:"-5",y:"1",z:"17",glow:"0",color:"light_gray",trans_2:"",trans_3:"",fallb_2:"?",fallb_3:"",command:"trigger detect.interact set 7001"}

# 地图设定
execute if score $map setting matches 0 run function base:merge_sign {x:"-11",y:"6",z:"-8",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.map.0",fallb_2:"00",fallb_3:"随机地图",command:"trigger detect.interact set 100"}
execute unless score $map setting matches 0 run function base:merge_sign {x:"-11",y:"6",z:"-8",glow:"1",color:"white",trans_2:"",trans_3:"ms.map.0",fallb_2:"00",fallb_3:"随机地图",command:"trigger detect.interact set 100"}
execute if score $map setting matches 1 run function base:merge_sign {x:"-11",y:"6",z:"-7",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.map.1",fallb_2:"01",fallb_3:"聚光圣殿",command:"trigger detect.interact set 101"}
execute unless score $map setting matches 1 run function base:merge_sign {x:"-11",y:"6",z:"-7",glow:"1",color:"white",trans_2:"",trans_3:"ms.map.1",fallb_2:"01",fallb_3:"聚光圣殿",command:"trigger detect.interact set 101"}
execute if score $map setting matches 2 run function base:merge_sign {x:"-11",y:"6",z:"-6",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.map.2",fallb_2:"02",fallb_3:"镇灵塔楼",command:"trigger detect.interact set 102"}
execute unless score $map setting matches 2 run function base:merge_sign {x:"-11",y:"6",z:"-6",glow:"1",color:"white",trans_2:"",trans_3:"ms.map.2",fallb_2:"02",fallb_3:"镇灵塔楼",command:"trigger detect.interact set 102"}
execute if score $map setting matches 3 run function base:merge_sign {x:"-11",y:"6",z:"-5",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.map.3",fallb_2:"03",fallb_3:"山间湖谷",command:"trigger detect.interact set 103"}
execute unless score $map setting matches 3 run function base:merge_sign {x:"-11",y:"6",z:"-5",glow:"1",color:"white",trans_2:"",trans_3:"ms.map.3",fallb_2:"03",fallb_3:"山间湖谷",command:"trigger detect.interact set 103"}

# 模式设定
execute if score $mode setting matches 1 run function base:merge_sign {x:"-8",y:"6",z:"-11",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.mode.1",fallb_2:"01",fallb_3:"灵气碎片",command:"trigger detect.interact set 201"}
execute unless score $mode setting matches 1 run function base:merge_sign {x:"-8",y:"6",z:"-11",glow:"1",color:"white",trans_2:"",trans_3:"ms.mode.1",fallb_2:"01",fallb_3:"灵气碎片",command:"trigger detect.interact set 201"}
execute if score $mode setting matches 2 run function base:merge_sign {x:"-7",y:"6",z:"-11",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.mode.2",fallb_2:"02",fallb_3:"针锋奔逃",command:"trigger detect.interact set 202"}
execute unless score $mode setting matches 2 run function base:merge_sign {x:"-7",y:"6",z:"-11",glow:"1",color:"white",trans_2:"",trans_3:"ms.mode.2",fallb_2:"02",fallb_3:"针锋奔逃",command:"trigger detect.interact set 202"}

# 回响概率
data merge block 0 7 3 {front_text:{has_glowing_text:1b,color:"yellow",messages:["",{translate:"ms.echo.chance",fallback:"回响触发几率"},[{score:{name:"$echo_chance",objective:"setting"}},"%"],{text:""}]}}
function base:merge_sign {x:"-1",y:"7",z:"3",glow:"1",color:"white",trans_2:"",trans_3:"",fallb_2:">>>",fallb_3:"+5%",command:"trigger detect.interact set 301"}
function base:merge_sign {x:"1",y:"7",z:"3",glow:"1",color:"white",trans_2:"",trans_3:"",fallb_2:"<<<",fallb_3:"-5%",command:"trigger detect.interact set 302"}

# 回响禁用
function base:merge_sign {x:"-3",y:"6",z:"3",glow:"1",color:"white",trans_2:"",trans_3:"ms.setting.next",fallb_2:"<<<",fallb_3:"上一页",command:"trigger detect.interact set 303"}
function base:merge_sign {x:"-9",y:"6",z:"3",glow:"1",color:"white",trans_2:"",trans_3:"ms.setting.prev",fallb_2:">>>",fallb_3:"下一页",command:"trigger detect.interact set 304"}
execute if score $echo_page setting matches 1 if data storage ms:echo {01:true} run function base:merge_sign {x:"-4",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.1",fallb_2:"01",fallb_3:"强制性引导",command:"trigger detect.interact set 401"}
execute if score $echo_page setting matches 1 if data storage ms:echo {01:false} run function base:merge_sign {x:"-4",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.1",fallb_2:"01",fallb_3:"强制性引导",command:"trigger detect.interact set 401"}
execute if score $echo_page setting matches 1 if data storage ms:echo {02:true} run function base:merge_sign {x:"-5",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.2",fallb_2:"02",fallb_3:"灵魂鉴碎片",command:"trigger detect.interact set 402"}
execute if score $echo_page setting matches 1 if data storage ms:echo {02:false} run function base:merge_sign {x:"-5",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.2",fallb_2:"02",fallb_3:"灵魂鉴碎片",command:"trigger detect.interact set 402"}
execute if score $echo_page setting matches 1 if data storage ms:echo {03:true} run function base:merge_sign {x:"-6",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.3",fallb_2:"03",fallb_3:"开盒得技能",command:"trigger detect.interact set 403"}
execute if score $echo_page setting matches 1 if data storage ms:echo {03:false} run function base:merge_sign {x:"-6",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.3",fallb_2:"03",fallb_3:"开盒得技能",command:"trigger detect.interact set 403"}
execute if score $echo_page setting matches 1 if data storage ms:echo {04:true} run function base:merge_sign {x:"-7",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.4",fallb_2:"04",fallb_3:"天幕降落雷",command:"trigger detect.interact set 404"}
execute if score $echo_page setting matches 1 if data storage ms:echo {04:false} run function base:merge_sign {x:"-7",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.4",fallb_2:"04",fallb_3:"天幕降落雷",command:"trigger detect.interact set 404"}
execute if score $echo_page setting matches 1 if data storage ms:echo {05:true} run function base:merge_sign {x:"-8",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.5",fallb_2:"05",fallb_3:"谁家小灵魂",command:"trigger detect.interact set 405"}
execute if score $echo_page setting matches 1 if data storage ms:echo {05:false} run function base:merge_sign {x:"-8",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.5",fallb_2:"05",fallb_3:"谁家小灵魂",command:"trigger detect.interact set 405"}
execute if score $echo_page setting matches 2 if data storage ms:echo {06:true} run function base:merge_sign {x:"-4",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.6",fallb_2:"06",fallb_3:"冲刺冲刺冲",command:"trigger detect.interact set 406"}
execute if score $echo_page setting matches 2 if data storage ms:echo {06:false} run function base:merge_sign {x:"-4",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.6",fallb_2:"06",fallb_3:"冲刺冲刺冲",command:"trigger detect.interact set 406"}
execute if score $echo_page setting matches 2 if data storage ms:echo {07:true} run function base:merge_sign {x:"-5",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.7",fallb_2:"07",fallb_3:"命运交响曲",command:"trigger detect.interact set 407"}
execute if score $echo_page setting matches 2 if data storage ms:echo {07:false} run function base:merge_sign {x:"-5",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.7",fallb_2:"07",fallb_3:"命运交响曲",command:"trigger detect.interact set 407"}
execute if score $echo_page setting matches 2 if data storage ms:echo {08:true} run function base:merge_sign {x:"-6",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.8",fallb_2:"08",fallb_3:"先抑再后扬",command:"trigger detect.interact set 408"}
execute if score $echo_page setting matches 2 if data storage ms:echo {08:false} run function base:merge_sign {x:"-6",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.8",fallb_2:"08",fallb_3:"先抑再后扬",command:"trigger detect.interact set 408"}
execute if score $echo_page setting matches 2 if data storage ms:echo {09:true} run function base:merge_sign {x:"-7",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.9",fallb_2:"09",fallb_3:"九次九重片",command:"trigger detect.interact set 409"}
execute if score $echo_page setting matches 2 if data storage ms:echo {09:false} run function base:merge_sign {x:"-7",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.9",fallb_2:"09",fallb_3:"九次九重片",command:"trigger detect.interact set 409"}
execute if score $echo_page setting matches 2 run function base:merge_sign {x:"-8",y:"6",z:"3",glow:"0",color:"white",trans_2:"",trans_3:"",fallb_2:"",fallb_3:"",command:""}

# 能力分配
execute if score $ability_assign setting matches 0 run function base:merge_sign {x:"3",y:"6",z:"1",glow:"1",color:"light_gray",trans_2:"",trans_3:"ms.ability.0",fallb_2:"◆◇◇◇◇◇",fallb_3:"全部随机",command:"trigger detect.interact set 500"}
execute if score $ability_assign setting matches 1 run function base:merge_sign {x:"3",y:"6",z:"1",glow:"1",color:"green",trans_2:"",trans_3:"ms.ability.1",fallb_2:"◇◆◇◇◇◇",fallb_3:"仅自选技能",command:"trigger detect.interact set 500"}
execute if score $ability_assign setting matches 2 run function base:merge_sign {x:"3",y:"6",z:"1",glow:"1",color:"green",trans_2:"",trans_3:"ms.ability.2",fallb_2:"◇◇◆◇◇◇",fallb_3:"仅自选一天赋",command:"trigger detect.interact set 500"}
execute if score $ability_assign setting matches 3 run function base:merge_sign {x:"3",y:"6",z:"1",glow:"1",color:"green",trans_2:"",trans_3:"ms.ability.3",fallb_2:"◇◇◇◆◇◇",fallb_3:"仅自选双天赋",command:"trigger detect.interact set 500"}
execute if score $ability_assign setting matches 4 run function base:merge_sign {x:"3",y:"6",z:"1",glow:"1",color:"green",trans_2:"",trans_3:"ms.ability.4",fallb_2:"◇◇◇◇◆◇",fallb_3:"自选技能与一天赋",command:"trigger detect.interact set 500"}
execute if score $ability_assign setting matches 5 run function base:merge_sign {x:"3",y:"6",z:"1",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.ability.5",fallb_2:"◇◇◇◇◇◆",fallb_3:"全部自选",command:"trigger detect.interact set 500"}