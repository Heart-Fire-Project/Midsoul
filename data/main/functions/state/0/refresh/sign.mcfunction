#> base:merge_sign
#  修改告示牌数据
#  @input x y z glow color trans_2 trans_3 fallb_2 fallb_3 command

# 重置游戏
function base:merge_sign {x:"11",y:"241",z:"-3",glow:"1",color:"red",trans_2:"ms.setting.init",trans_3:"ms.setting.admin",fallb_2:"重置游戏",fallb_3:"[仅限 admin]",command:"trigger interact_check set 100"}

# 开关式
# 锁定游戏
execute if score $gamelock data matches 0 run function base:merge_sign {x:"10",y:"241",z:"-3",glow:"1",color:"light_gray",trans_2:"ms.setting.gamelock",trans_3:"ms.setting.admin",fallb_2:"锁定游戏",fallb_3:"[仅限 admin]",command:"trigger interact_check set 101"}
execute if score $gamelock data matches 1 run function base:merge_sign {x:"10",y:"241",z:"-3",glow:"1",color:"cyan",trans_2:"ms.setting.gamelock",trans_3:"ms.setting.admin",fallb_2:"锁定游戏",fallb_3:"[仅限 admin]",command:"trigger interact_check set 101"}
# 限制设置
execute if score $settinglock data matches 0 run function base:merge_sign {x:"9",y:"241",z:"-3",glow:"1",color:"light_gray",trans_2:"ms.setting.settinglock",trans_3:"ms.setting.admin",fallb_2:"限制设置",fallb_3:"[仅限 admin]",command:"trigger interact_check set 102"}
execute if score $settinglock data matches 1 run function base:merge_sign {x:"9",y:"241",z:"-3",glow:"1",color:"cyan",trans_2:"ms.setting.settinglock",trans_3:"ms.setting.admin",fallb_2:"限制设置",fallb_3:"[仅限 admin]",command:"trigger interact_check set 102"}

# 项目轮换式 - 主体
# 游戏模式
execute if score $gamemode data matches 1 run function base:merge_sign {x:"13",y:"242",z:"0",glow:"1",color:"white",trans_2:"ms.setting.gamemode",trans_3:"ms.mode.1",fallb_2:"游戏模式",fallb_3:"灵气碎片",command:"trigger interact_check set 110"}
execute if score $gamemode data matches 2 run function base:merge_sign {x:"13",y:"242",z:"0",glow:"1",color:"white",trans_2:"ms.setting.gamemode",trans_3:"ms.mode.2",fallb_2:"游戏模式",fallb_3:"针锋奔逃",command:"trigger interact_check set 110"}
# 游戏地图
execute if score $gamemap data matches 0 run function base:merge_sign {x:"13",y:"241",z:"0",glow:"1",color:"white",trans_2:"ms.setting.gamemap",trans_3:"ms.map.0",fallb_2:"游戏地图",fallb_3:"随机地图",command:"trigger interact_check set 120"}
execute if score $gamemap data matches 1 run function base:merge_sign {x:"13",y:"241",z:"0",glow:"1",color:"white",trans_2:"ms.setting.gamemap",trans_3:"ms.map.1",fallb_2:"游戏地图",fallb_3:"聚光圣殿",command:"trigger interact_check set 120"}
execute if score $gamemap data matches 2 run function base:merge_sign {x:"13",y:"241",z:"0",glow:"1",color:"white",trans_2:"ms.setting.gamemap",trans_3:"ms.map.2",fallb_2:"游戏地图",fallb_3:"镇灵塔楼",command:"trigger interact_check set 120"}
execute if score $gamemap data matches 3 run function base:merge_sign {x:"13",y:"241",z:"0",glow:"1",color:"white",trans_2:"ms.setting.gamemap",trans_3:"ms.map.3",fallb_2:"游戏地图",fallb_3:"山间湖谷",command:"trigger interact_check set 120"}
# V1510N

# 项目轮换式 - 切换
# 游戏模式
function base:merge_sign {x:"13",y:"242",z:"-1",glow:"0",color:"black",trans_2:"",trans_3:"ms.setting.prev",fallb_2:"<<<",fallb_3:"上一项",command:"trigger interact_check set 111"}
function base:merge_sign {x:"13",y:"242",z:"1",glow:"0",color:"black",trans_2:"",trans_3:"ms.setting.next",fallb_2:">>>",fallb_3:"下一项",command:"trigger interact_check set 112"}
# 游戏地图
function base:merge_sign {x:"13",y:"241",z:"-1",glow:"0",color:"black",trans_2:"",trans_3:"ms.setting.prev",fallb_2:"<<<",fallb_3:"上一项",command:"trigger interact_check set 121"}
function base:merge_sign {x:"13",y:"241",z:"1",glow:"0",color:"black",trans_2:"",trans_3:"ms.setting.next",fallb_2:">>>",fallb_3:"下一项",command:"trigger interact_check set 122"}
# V1510N

# 教程
function base:merge_sign {x:"-3",y:"241",z:"11",glow:"1",color:"cyan",trans_2:"ms.shard",trans_3:"",fallb_2:"灵魂碎片",fallb_3:"",command:"trigger interact_check set 301"}
function base:merge_sign {x:"-3",y:"241",z:"9",glow:"1",color:"light_gray",trans_2:"ms.chest",trans_3:"",fallb_2:"灵魂宝物箱",fallb_3:"",command:"trigger interact_check set 302"}
function base:merge_sign {x:"-3",y:"241",z:"7",glow:"1",color:"yellow",trans_2:"ms.lamp",trans_3:"",fallb_2:"灵魂之灯",fallb_3:"",command:"trigger interact_check set 303"}
function base:merge_sign {x:"-3",y:"241",z:"5",glow:"1",color:"pink",trans_2:"ms.portal",trans_3:"",fallb_2:"传送门",fallb_3:"",command:"trigger interact_check set 304"}