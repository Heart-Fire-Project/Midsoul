tp @e[tag=lobby_entity,type=mannequin] 0 -100 0
kill @e[tag=lobby_entity]

# 申必展示框
summon item_frame 0 1 23 {Tags:["lobby_entity"],Facing:3b}

# 主标题
summon text_display 3.99 2.2 0.5 {Tags:[lobby_entity],text:[{translate:"ms.title",fallback:"午夜 🔯 灵魂",color:"#7367F0"}],background:0,billboard:"fixed",alignment:"center",line_width:200,interpolation_duration:0,transformation:{scale:[2.8f,2.8f,2.8f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display 3.99 1.8 0.5 {Tags:[lobby_entity],text:[{translate:"ms.lobby.ver",fallback:"2.0 💠 混沌回响",color:"white"}],background:0,billboard:"fixed",alignment:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

# 路标
summon text_display -6.0 1.3 -6.0 {Tags:[lobby_entity],text:[{translate:"ms.lobby.extra",fallback:"额外区域",color:"dark_gray"}],background:-1,billboard:"center",alignment:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -6.0 1.15 -6.0 {Tags:[lobby_entity],text:[{translate:"ms.lobby.extra.desc",fallback:"装配粒子效果、文本套组等多种装饰品",color:"white"}],background:0,billboard:"center",alignment:"center",line_width:240,interpolation_duration:0,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -9 6.3 -9 {Tags:[lobby_entity],text:[{translate:"ms.lobby.setting",fallback:"游戏设定",color:"#7367F0"}],background:-1,billboard:"center",alignment:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -9 6.15 -9 {Tags:[lobby_entity],text:[{translate:"ms.lobby.setting.desc",fallback:"管理员可使用 /function debug:0 进行设置",color:"white"}],background:0,billboard:"center",alignment:"center",line_width:240,interpolation_duration:0,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if data storage ms:setting {setting_lock:true} run summon text_display -9 6.05 -9 {Tags:[lobby_entity,setting_lock],text:[{translate:"ms.lobby.setting_lock",fallback:"当前设定已被管理员锁定",color:"red"}],background:-1,billboard:"center",alignment:"center",line_width:240,interpolation_duration:0,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -9 12.3 1 {Tags:[lobby_entity],text:[{translate:"ms.lobby.index",fallback:"能力一览",color:"dark_green"}],background:-1,billboard:"center",alignment:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -9 12.15 1 {Tags:[lobby_entity],text:[{translate:"ms.lobby.index.desc",fallback:"当前游戏内的所有天赋、技能以及灵魂宝物",color:"white"}],background:0,billboard:"center",alignment:"center",line_width:240,interpolation_duration:0,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display 1 12.3 -9 {Tags:[lobby_entity],text:[{translate:"ms.lobby.credit",fallback:"鸣谢列表",color:"#CC81F0"}],background:-1,billboard:"center",alignment:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display 1 12.15 -9 {Tags:[lobby_entity],text:[{translate:"ms.lobby.credit.desc",fallback:"感谢创造者，以及正在游玩的你",color:"white"}],background:0,billboard:"center",alignment:"center",line_width:240,interpolation_duration:0,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

# 墙标
summon text_display 2.5 1.9 3.99 {Tags:[lobby_entity],text:[{translate:"ms.lobby.notice",fallback:"公告栏",color:"white"}],background:0,billboard:"fixed",alignment:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1.5f,1.5f,1.5f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,-1f,0f,1f]}}
summon text_display -10.99 7.5 -9.2 {Tags:[lobby_entity],text:["« ",{translate:"ms.setting.map",fallback:"游戏地图",color:"white"}],background:0,billboard:"fixed",alignment:"center",line_width:100,interpolation_duration:0,transformation:{scale:[1.5f,1.5f,1.5f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -9.2 7.0 -10.99 {Tags:[lobby_entity],text:[{translate:"ms.setting.mode",fallback:"游戏模式",color:"white"}," »"],background:0,billboard:"fixed",alignment:"center",line_width:100,interpolation_duration:0,transformation:{scale:[1.5f,1.5f,1.5f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -9.2 7.3 3.99 {Tags:[lobby_entity],text:["« ",{translate:"ms.setting.echo_pick",fallback:"回响选配",color:"white"}],background:0,billboard:"fixed",alignment:"center",line_width:100,interpolation_duration:0,transformation:{scale:[1.5f,1.5f,1.5f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,-1f,0f,1f]}}
summon text_display -2.2 8.3 3.99 {Tags:[lobby_entity],text:["« ",{translate:"ms.setting.echo_chance",fallback:"回响概率",color:"white"}],background:0,billboard:"fixed",alignment:"center",line_width:100,interpolation_duration:0,transformation:{scale:[1.5f,1.5f,1.5f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,-1f,0f,1f]}}
summon text_display 3.99 7.3 -1.2 {Tags:[lobby_entity],text:[{translate:"ms.setting.ability",fallback:"能力分配",color:"white"}," »"],background:0,billboard:"fixed",alignment:"center",line_width:100,interpolation_duration:0,transformation:{scale:[1.5f,1.5f,1.5f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

# 跑酷区的和平鸽
summon skeleton 8 22 25 {CustomName:"HPG6",equipment:{feet:{id:"leather_boots"},legs:{id:"netherite_leggings"},chest:{id:"iron_chestplate"},head:{id:"player_head",components:{profile:"HPG6"}},mainhand:{id:"bow",components:{enchantments:{punch:2}}}},LeftHanded:false,Invulnerable:true,PersistenceRequired:true,Tags:[lobby_entity]}

# 鸣谢
summon text_display -14.01 12.3 -7.5 {brightness:{block:15,sky:15},Tags:[lobby_entity],text:{translate:"ms.credit.secret",fallback:"贴近以开门"},background:0,billboard:"fixed",alignment:"center",line_width:100,interpolation_duration:0,transformation:{scale:[0.6f,0.6f,0.6f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon mannequin -1.5 12 -9.5 {profile:{name:"R7sr"},Rotation:[0,0],Invulnerable:true,attributes:[{id:"scale",base:0.7}],Tags:[lobby_entity]}
summon mannequin -3.5 12 -9.5 {profile:{name:"1KYR_CN"},Rotation:[0,0],Invulnerable:true,attributes:[{id:"scale",base:0.7}],Tags:[lobby_entity]}
summon mannequin -5.5 12 -9.5 {profile:{name:"huanmeng_yc"},Rotation:[0,0],Invulnerable:true,attributes:[{id:"scale",base:0.7}],Tags:[lobby_entity]}
summon mannequin -17.5 12 -7.5 {profile:{name:"Mol1Sama"},Rotation:[-90,0],Invulnerable:true,attributes:[{id:"scale",base:0.7}],Tags:[lobby_entity]}

summon text_display 3.99 1.4 0.5 {Tags:[lobby_entity],text:[{translate:"ms.lobby.test",fallback:"测试版本，不代表最终品质",color:"white"}],background:1073758336,billboard:"fixed",alignment:"center",line_width:200,interpolation_duration:0,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}