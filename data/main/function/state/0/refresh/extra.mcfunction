kill @e[tag=extra_entity]
kill @e[tag=query_entity]

# 路标
summon text_display -994 -0.7 -1013 {Tags:["extra_entity"],text:'[{"translate":"ms.extra.main","fallback":"返回主大厅","color":"gold"}]',background:-1,billboard:"center",alignment:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -994 -0.85 -1013 {Tags:["extra_entity"],text:'[{"translate":"ms.extra.main.desc","fallback":"前方左转，然后马上右转","color":"white"}]',background:0,billboard:"center",alignment:"center",line_width:240,interpolation_duration:0,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -992 -0.7 -1001 {Tags:["extra_entity"],text:'[{"translate":"ms.extra.query","fallback":"数据查询","color":"#7C33B8"}]',background:-1,billboard:"center",alignment:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -992 -0.85 -1001 {Tags:["extra_entity"],text:'[{"translate":"ms.extra.query.desc","fallback":"今天，你掉分了吗？","color":"white"}]',background:0,billboard:"center",alignment:"center",line_width:240,interpolation_duration:0,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

# 粒子效果
summon text_display -991 -0.7 -1006 {Tags:["extra_entity"],text:'[{"translate":"ms.extra.particle","fallback":"粒子效果","color":"dark_blue"}]',background:-1,billboard:"center",alignment:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -991 -0.85 -1006 {Tags:["extra_entity"],text:'[{"translate":"ms.extra.particle.desc","fallback":"放心，你的粒子效果敌方看不见","color":"white"}]',background:0,billboard:"center",alignment:"center",line_width:240,interpolation_duration:0,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
function base:merge_sign {x:"-991",y:"0",z:"-1011",glow:"1",color:"light_gray",trans_2:"",trans_3:"ms.particle.0",fallb_2:"--",fallb_3:"无粒子效果",command:"trigger detect.interact set 4100"}
function base:merge_sign {x:"-990",y:"0",z:"-1011",glow:"1",color:"white",trans_2:"",trans_3:"ms.particle.1",fallb_2:"01",fallb_3:"午夜繁星",command:"trigger detect.interact set 4101"}
function base:merge_sign {x:"-989",y:"0",z:"-1011",glow:"1",color:"white",trans_2:"",trans_3:"ms.particle.2",fallb_2:"02",fallb_3:"氤氲灵气",command:"trigger detect.interact set 4102"}
function base:merge_sign {x:"-988",y:"0",z:"-1011",glow:"1",color:"white",trans_2:"",trans_3:"ms.particle.3",fallb_2:"03",fallb_3:"霜凝冰痕",command:"trigger detect.interact set 4103"}
function base:merge_sign {x:"-987",y:"0",z:"-1011",glow:"1",color:"white",trans_2:"",trans_3:"ms.particle.4",fallb_2:"04",fallb_3:"点灯施援",command:"trigger detect.interact set 4104"}
function base:merge_sign {x:"-987",y:"0",z:"-1010",glow:"1",color:"white",trans_2:"",trans_3:"ms.particle.5",fallb_2:"05",fallb_3:"灵迹随踪",command:"trigger detect.interact set 4105"}
function base:merge_sign {x:"-987",y:"0",z:"-1009",glow:"1",color:"white",trans_2:"",trans_3:"ms.particle.6",fallb_2:"06",fallb_3:"万象环身",command:"trigger detect.interact set 4106"}
function base:merge_sign {x:"-987",y:"0",z:"-1008",glow:"1",color:"white",trans_2:"",trans_3:"ms.particle.7",fallb_2:"07",fallb_3:"绚彩粉墨",command:"trigger detect.interact set 4107"}
function base:merge_sign {x:"-987",y:"0",z:"-1007",glow:"1",color:"white",trans_2:"",trans_3:"ms.particle.8",fallb_2:"08",fallb_3:"桃起樱落",command:"trigger detect.interact set 4108"}
function base:merge_sign {x:"-987",y:"0",z:"-1006",glow:"1",color:"white",trans_2:"",trans_3:"ms.particle.9",fallb_2:"09",fallb_3:"双生魂焰",command:"trigger detect.interact set 4109"}
summon marker -990 -1 -1012 {Tags:["extra_entity","particle_1"]}
summon marker -989 -1 -1012 {Tags:["extra_entity","particle_2"]}
summon marker -988 -1 -1012 {Tags:["extra_entity","particle_3"]}
summon marker -986 -1 -1011 {Tags:["extra_entity","particle_4"]}
summon marker -986 -1 -1010 {Tags:["extra_entity","particle_5"]}
summon marker -986 -1 -1009 {Tags:["extra_entity","particle_6"]}
summon marker -986 -1 -1008 {Tags:["extra_entity","particle_7"]}
summon marker -986 -1 -1007 {Tags:["extra_entity","particle_8"]}
summon marker -986 -1 -1006 {Tags:["extra_entity","particle_9"]}

# 武器样式
summon text_display -991 -0.7 -996 {Tags:["extra_entity"],text:'[{"translate":"ms.extra.weapon","fallback":"武器样式","color":"dark_purple"}]',background:-1,billboard:"center",alignment:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -991 -0.85 -996 {Tags:["extra_entity"],text:'[{"translate":"ms.extra.weappon.desc","fallback":"高级武器可提供高达 0.00%% 的加成","color":"white"}]',background:0,billboard:"center",alignment:"center",line_width:240,interpolation_duration:0,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
function base:merge_sign {x:"-987",y:"0",z:"-996",glow:"1",color:"light_gray",trans_2:"",trans_3:"ms.weapon.0",fallb_2:"00",fallb_3:"祛灵刃",command:"trigger detect.interact set 4200"}
function base:merge_sign {x:"-987",y:"0",z:"-995",glow:"1",color:"white",trans_2:"",trans_3:"ms.weapon.1",fallb_2:"01",fallb_3:"祛灵刃 α",command:"trigger detect.interact set 4201"}
function base:merge_sign {x:"-987",y:"0",z:"-994",glow:"1",color:"white",trans_2:"",trans_3:"ms.weapon.2",fallb_2:"02",fallb_3:"祛灵刃 β",command:"trigger detect.interact set 4202"}
function base:merge_sign {x:"-987",y:"0",z:"-993",glow:"1",color:"white",trans_2:"",trans_3:"ms.weapon.3",fallb_2:"03",fallb_3:"破魂砖",command:"trigger detect.interact set 4203"}
function base:merge_sign {x:"-987",y:"0",z:"-992",glow:"1",color:"white",trans_2:"",trans_3:"ms.weapon.4",fallb_2:"04",fallb_3:"散炽棍",command:"trigger detect.interact set 4204"}
summon item -986 -1.1 -996 {Tags:[extra_entity],Item:{id:"golden_sword"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
summon item -986 -1.1 -995 {Tags:[extra_entity],Item:{id:"diamond_sword"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
summon item -986 -1.1 -994 {Tags:[extra_entity],Item:{id:"netherite_sword"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
summon item -986 -1.1 -993 {Tags:[extra_entity],Item:{id:"brick"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
summon item -986 -1.1 -992 {Tags:[extra_entity],Item:{id:"blaze_rod"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}

# 饰品装配
summon text_display -997 -0.7 -995 {Tags:["extra_entity"],text:'[{"translate":"ms.extra.headset","fallback":"饰品装配","color":"light_purple"}]',background:-1,billboard:"center",alignment:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -997 -0.85 -995 {Tags:["extra_entity"],text:'[{"translate":"ms.extra.headset.desc","fallback":"我去，是时尚小垃圾，我们有救了","color":"white"}]',background:0,billboard:"center",alignment:"center",line_width:240,interpolation_duration:0,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
function base:merge_sign {x:"-997",y:"0",z:"-991",glow:"1",color:"light_gray",trans_2:"",trans_3:"ms.headset.0",fallb_2:"--",fallb_3:"空气",command:"trigger detect.interact set 4300"}
function base:merge_sign {x:"-998",y:"0",z:"-991",glow:"1",color:"white",trans_2:"",trans_3:"ms.headset.1",fallb_2:"01",fallb_3:"鬼亦独角兽",command:"trigger detect.interact set 4301"}
function base:merge_sign {x:"-999",y:"0",z:"-991",glow:"1",color:"white",trans_2:"",trans_3:"ms.headset.2",fallb_2:"02",fallb_3:"战地通信员",command:"trigger detect.interact set 4302"}
function base:merge_sign {x:"-1000",y:"0",z:"-991",glow:"1",color:"white",trans_2:"",trans_3:"ms.headset.3",fallb_2:"03",fallb_3:"紫水晶皇冠",command:"trigger detect.interact set 4303"}
summon item_display -998 -0.48 -990 {Tags:["extra_entity"],item:{id:"player_head",components:{profile:R7sr}},billboard:"fixed",interpolation_duration:0,item_display:"head",transformation:{scale:[0.9f,0.9f,0.9f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,-1f,0f,1f]}}
summon item_display -999 -0.48 -990 {Tags:["extra_entity"],item:{id:"player_head",components:{profile:1KYR_CN}},billboard:"fixed",interpolation_duration:0,item_display:"head",transformation:{scale:[0.9f,0.9f,0.9f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,-1f,0f,1f]}}
summon item_display -1000 -0.48 -990 {Tags:["extra_entity"],item:{id:"player_head",components:{profile:huanmeng_yc}},billboard:"fixed",interpolation_duration:0,item_display:"head",transformation:{scale:[0.9f,0.9f,0.9f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,-1f,0f,1f]}}
summon item_display -998 -0.7 -990 {Tags:["extra_entity"],item:{id:"end_rod"},billboard:"fixed",interpolation_duration:0,item_display:"head",transformation:{scale:[0.6f,0.6f,0.6f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,1f,0f,1f]}}
summon item_display -999 -0.7 -990 {Tags:["extra_entity"],item:{id:"lightning_rod"},billboard:"fixed",interpolation_duration:0,item_display:"head",transformation:{scale:[0.7f,0.7f,0.7f],translation:[-0.05f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,1f,0f,1f]}}
summon item_display -1000 -0.7 -990 {Tags:["extra_entity"],item:{id:"amethyst_cluster"},billboard:"fixed",interpolation_duration:0,item_display:"head",transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,-0.05f,0.05f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,1f,0f,1f]}}

# 文本套组
summon text_display -997 -0.7 -1007 {Tags:["extra_entity"],text:'[{"translate":"ms.extra.text","fallback":"文本套组","color":"blue"}]',background:-1,billboard:"center",alignment:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -997 -0.85 -1007 {Tags:["extra_entity"],text:'[{"translate":"ms.extra.text.desc","fallback":"天啊！翻译组最讨厌的一集！","color":"white"}]',background:0,billboard:"center",alignment:"center",line_width:240,interpolation_duration:0,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
function base:merge_sign {x:"-1001",y:"0",z:"-1007",glow:"1",color:"light_gray",trans_2:"",trans_3:"ms.text.0",fallb_2:"00",fallb_3:"趋光",command:"trigger detect.interact set 4400"}
function base:merge_sign {x:"-1001",y:"0",z:"-1008",glow:"1",color:"white",trans_2:"",trans_3:"ms.text.1",fallb_2:"01",fallb_3:"溯回",command:"trigger detect.interact set 4401"}
function base:merge_sign {x:"-1001",y:"0",z:"-1009",glow:"1",color:"white",trans_2:"",trans_3:"ms.text.2",fallb_2:"02",fallb_3:"无拘",command:"trigger detect.interact set 4402"}
setblock -1002 -1 -1007 black_wall_banner[facing=east]
data merge block -1002 -1 -1007 {patterns:[{pattern:"mojang",color:"light_blue"},{pattern:"bricks",color:"black"},{pattern:"triangle_bottom",color:"light_blue"},{pattern:"rhombus",color:"black"},{pattern:"triangles_bottom",color:"cyan"},{pattern:"gradient_up",color:"light_blue"}]}
setblock -1002 -1 -1008 black_wall_banner[facing=east]
data merge block -1002 -1 -1008 {patterns:[{pattern:"small_stripes",color:"light_blue"},{pattern:"bricks",color:"black"},{pattern:"gradient_up",color:"black"},{pattern:"border",color:"black"},{pattern:"skull",color:"light_blue"},{pattern:"skull",color:"black"}]}
setblock -1002 -1 -1009 pink_wall_banner[facing=east]
data merge block -1002 -1 -1009 {patterns:[{pattern:"triangles_top",color:"cyan"},{pattern:"triangles_top",color:"cyan"},{pattern:"gradient_up",color:"cyan"},{pattern:"triangles_bottom",color:"pink"},{pattern:"circle",color:"white"}]}

# 里程碑
summon text_display -994 -0.7 -990 {Tags:["extra_entity"],text:'[{"translate":"ms.extra.milestone","fallback":"里程碑","color":"#072115"}]',background:-1,billboard:"center",alignment:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -994 -0.85 -990 {Tags:["extra_entity"],text:'[{"translate":"ms.extra.milestone.desc","fallback":"这不是通行证，更没有付费内容","color":"white"}]',background:0,billboard:"center",alignment:"center",line_width:240,interpolation_duration:0,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}