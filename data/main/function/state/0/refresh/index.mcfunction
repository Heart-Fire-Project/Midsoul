kill @e[tag=index_entity]

# 图鉴类型
fill -12 13 1 -12 11 -3 tuff_bricks
execute if score $index_page setting matches 11 run fill -12 11 1 -12 13 1 cyan_stained_glass
execute if score $index_page setting matches 21 run fill -12 11 0 -12 13 0 red_stained_glass
execute if score $index_page setting matches 31 run fill -12 11 -1 -12 13 -1 light_blue_stained_glass
execute if score $index_page setting matches 41 run fill -12 11 -2 -12 13 -2 orange_stained_glass
execute if score $index_page setting matches 51 run fill -12 11 -3 -12 13 -3 lime_stained_glass
execute if score $index_page setting matches 11 run fill 0 15 2 -8 15 2 cyan_stained_glass
execute if score $index_page setting matches 21 run fill 0 15 2 -8 15 2 red_stained_glass
execute if score $index_page setting matches 31 run fill 0 15 2 -8 15 2 light_blue_stained_glass
execute if score $index_page setting matches 41 run fill 0 15 2 -8 15 2 orange_stained_glass
execute if score $index_page setting matches 51 run fill 0 15 2 -8 15 2 lime_stained_glass
execute if score $index_page setting matches 11 run function base:merge_sign {x:"-11",y:"12",z:"1",glow:"1",color:"light_blue",trans_2:"",trans_3:"ms.index.1",fallb_2:"S0",fallb_3:"灵魂技能",command:"trigger detect.interact set 601"}
execute unless score $index_page setting matches 11 run function base:merge_sign {x:"-11",y:"12",z:"1",glow:"1",color:"light_gray",trans_2:"",trans_3:"ms.index.1",fallb_2:"S0",fallb_3:"灵魂技能",command:"trigger detect.interact set 601"}
execute if score $index_page setting matches 21 run function base:merge_sign {x:"-11",y:"12",z:"0",glow:"1",color:"red",trans_2:"",trans_3:"ms.index.2",fallb_2:"S1",fallb_3:"守卫者技能",command:"trigger detect.interact set 602"}
execute unless score $index_page setting matches 21 run function base:merge_sign {x:"-11",y:"12",z:"0",glow:"1",color:"light_gray",trans_2:"",trans_3:"ms.index.2",fallb_2:"S1",fallb_3:"守卫者技能",command:"trigger detect.interact set 602"}
execute if score $index_page setting matches 31 run function base:merge_sign {x:"-11",y:"12",z:"-1",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.index.3",fallb_2:"T0",fallb_3:"灵魂天赋",command:"trigger detect.interact set 603"}
execute unless score $index_page setting matches 31 run function base:merge_sign {x:"-11",y:"12",z:"-1",glow:"1",color:"light_gray",trans_2:"",trans_3:"ms.index.3",fallb_2:"T0",fallb_3:"灵魂天赋",command:"trigger detect.interact set 603"}
execute if score $index_page setting matches 41 run function base:merge_sign {x:"-11",y:"12",z:"-2",glow:"1",color:"orange",trans_2:"",trans_3:"ms.index.4",fallb_2:"T1",fallb_3:"守卫者天赋",command:"trigger detect.interact set 604"}
execute unless score $index_page setting matches 41 run function base:merge_sign {x:"-11",y:"12",z:"-2",glow:"1",color:"light_gray",trans_2:"",trans_3:"ms.index.4",fallb_2:"T1",fallb_3:"守卫者天赋",command:"trigger detect.interact set 604"}
execute if score $index_page setting matches 51 run function base:merge_sign {x:"-11",y:"12",z:"-3",glow:"1",color:"lime",trans_2:"",trans_3:"ms.index.5",fallb_2:"R",fallb_3:"灵魂宝物",command:"trigger detect.interact set 605"}
execute unless score $index_page setting matches 51 run function base:merge_sign {x:"-11",y:"12",z:"-3",glow:"1",color:"light_gray",trans_2:"",trans_3:"ms.index.5",fallb_2:"R",fallb_3:"灵魂宝物",command:"trigger detect.interact set 605"}

# 图鉴 S0
execute if score $index_page setting matches 11 run function base:merge_sign {x:"0",y:"11",z:"3",glow:"1",color:"light_blue",trans_2:"",trans_3:"ms.skill.001",fallb_2:"S001",fallb_3:"幻影迷踪",command:"trigger detect.interact set 1001"}
execute if score $index_page setting matches 11 run function base:merge_sign {x:"-1",y:"11",z:"3",glow:"1",color:"light_blue",trans_2:"",trans_3:"ms.skill.002",fallb_2:"S002",fallb_3:"灵灯熔铸",command:"trigger detect.interact set 1002"}
execute if score $index_page setting matches 11 run function base:merge_sign {x:"-2",y:"11",z:"3",glow:"1",color:"light_blue",trans_2:"",trans_3:"ms.skill.003",fallb_2:"S003",fallb_3:"逆向追踪",command:"trigger detect.interact set 1003"}
execute if score $index_page setting matches 11 run function base:merge_sign {x:"-3",y:"11",z:"3",glow:"1",color:"light_blue",trans_2:"",trans_3:"ms.skill.004",fallb_2:"S004",fallb_3:"铤而走险",command:"trigger detect.interact set 1004"}
execute if score $index_page setting matches 11 run function base:merge_sign {x:"-4",y:"11",z:"3",glow:"1",color:"light_blue",trans_2:"",trans_3:"ms.skill.005",fallb_2:"S005",fallb_3:"锚定虚影",command:"trigger detect.interact set 1005"}
execute if score $index_page setting matches 11 run function base:merge_sign {x:"-5",y:"11",z:"3",glow:"1",color:"light_blue",trans_2:"",trans_3:"",fallb_2:"",fallb_3:"",command:""}
execute if score $index_page setting matches 11 run function base:merge_sign {x:"-6",y:"11",z:"3",glow:"1",color:"light_blue",trans_2:"",trans_3:"",fallb_2:"",fallb_3:"",command:""}
execute if score $index_page setting matches 11 run function base:merge_sign {x:"-7",y:"11",z:"3",glow:"1",color:"light_blue",trans_2:"",trans_3:"",fallb_2:"",fallb_3:"",command:""}
execute if score $index_page setting matches 11 run function base:merge_sign {x:"-8",y:"11",z:"3",glow:"1",color:"light_blue",trans_2:"",trans_3:"",fallb_2:"",fallb_3:"",command:""}
execute if score $index_page setting matches 11 run summon item 0 12.1 4 {Tags:[index_entity],Item:{id:"phantom_membrane"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 11 run summon item -1 12.1 4 {Tags:[index_entity],Item:{id:"soul_lantern"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 11 run summon item -2 12.1 4 {Tags:[index_entity],Item:{id:"recovery_compass"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 11 run summon item -3 12.1 4 {Tags:[index_entity],Item:{id:"dragon_breath"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 11 run summon item -4 12.1 4 {Tags:[index_entity],Item:{id:"shulker_shell"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}

# 图鉴 S1
execute if score $index_page setting matches 21 run function base:merge_sign {x:"0",y:"11",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.skill.101",fallb_2:"S101",fallb_3:"虔诚力场",command:"trigger detect.interact set 1101"}
execute if score $index_page setting matches 21 run function base:merge_sign {x:"-1",y:"11",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.skill.102",fallb_2:"S102",fallb_3:"灵力掌控",command:"trigger detect.interact set 1102"}
execute if score $index_page setting matches 21 run function base:merge_sign {x:"-2",y:"11",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.skill.103",fallb_2:"S103",fallb_3:"唤灵留迹",command:"trigger detect.interact set 1103"}
execute if score $index_page setting matches 21 run function base:merge_sign {x:"-3",y:"11",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.skill.104",fallb_2:"S104",fallb_3:"恶灵诅咒",command:"trigger detect.interact set 1104"}
execute if score $index_page setting matches 21 run function base:merge_sign {x:"-4",y:"11",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.skill.105",fallb_2:"S105",fallb_3:"雾影阴霾",command:"trigger detect.interact set 1105"}
execute if score $index_page setting matches 21 run function base:merge_sign {x:"-5",y:"11",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"",fallb_2:"",fallb_3:"",command:""}
execute if score $index_page setting matches 21 run function base:merge_sign {x:"-6",y:"11",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"",fallb_2:"",fallb_3:"",command:""}
execute if score $index_page setting matches 21 run function base:merge_sign {x:"-7",y:"11",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"",fallb_2:"",fallb_3:"",command:""}
execute if score $index_page setting matches 21 run function base:merge_sign {x:"-8",y:"11",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"",fallb_2:"",fallb_3:"",command:""}
execute if score $index_page setting matches 21 run summon item 0 12.1 4 {Tags:[index_entity],Item:{id:"spectral_arrow"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 21 run summon item -1 12.1 4 {Tags:[index_entity],Item:{id:"resin_clump"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 21 run summon item -2 12.1 4 {Tags:[index_entity],Item:{id:"compass"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 21 run summon item -3 12.1 4 {Tags:[index_entity],Item:{id:"ominous_bottle"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 21 run summon item -4 12.1 4 {Tags:[index_entity],Item:{id:"light_gray_dye"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}

# 图鉴 T0
execute if score $index_page setting matches 31 run function base:merge_sign {x:"0",y:"11",z:"3",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.talent.001",fallb_2:"T001",fallb_3:"全神贯注",command:"trigger detect.interact set 2001"}
execute if score $index_page setting matches 31 run function base:merge_sign {x:"-1",y:"11",z:"3",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.talent.002",fallb_2:"T002",fallb_3:"赴汤蹈火",command:"trigger detect.interact set 2002"}
execute if score $index_page setting matches 31 run function base:merge_sign {x:"-2",y:"11",z:"3",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.talent.003",fallb_2:"T003",fallb_3:"同生共死",command:"trigger detect.interact set 2003"}
execute if score $index_page setting matches 31 run function base:merge_sign {x:"-3",y:"11",z:"3",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.talent.004",fallb_2:"T004",fallb_3:"魂魄汲取",command:"trigger detect.interact set 2004"}
execute if score $index_page setting matches 31 run function base:merge_sign {x:"-4",y:"11",z:"3",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.talent.005",fallb_2:"T005",fallb_3:"蹑手蹑脚",command:"trigger detect.interact set 2005"}
execute if score $index_page setting matches 31 run function base:merge_sign {x:"-5",y:"11",z:"3",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.talent.006",fallb_2:"T006",fallb_3:"碎片注入",command:"trigger detect.interact set 2006"}
execute if score $index_page setting matches 31 run function base:merge_sign {x:"-6",y:"11",z:"3",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.talent.007",fallb_2:"T007",fallb_3:"灵气感知",command:"trigger detect.interact set 2007"}
execute if score $index_page setting matches 31 run function base:merge_sign {x:"-7",y:"11",z:"3",glow:"1",color:"cyan",trans_2:"",trans_3:"",fallb_2:"",fallb_3:"",command:""}
execute if score $index_page setting matches 31 run function base:merge_sign {x:"-8",y:"11",z:"3",glow:"1",color:"cyan",trans_2:"",trans_3:"",fallb_2:"",fallb_3:"",command:""}
execute if score $index_page setting matches 31 run summon item 0 12.1 4 {Tags:[index_entity],Item:{id:"glow_ink_sac"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 31 run summon item -1 12.1 4 {Tags:[index_entity],Item:{id:"blaze_powder"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 31 run summon item -2 12.1 4 {Tags:[index_entity],Item:{id:"magma_cream"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 31 run summon item -3 12.1 4 {Tags:[index_entity],Item:{id:"soul_torch"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 31 run summon item -4 12.1 4 {Tags:[index_entity],Item:{id:"feather"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 31 run summon item -5 12.1 4 {Tags:[index_entity],Item:{id:"prismarine_crystals"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 31 run summon item -6 12.1 4 {Tags:[index_entity],Item:{id:"cyan_dye"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}

# 图鉴 T1
execute if score $index_page setting matches 41 run function base:merge_sign {x:"0",y:"11",z:"3",glow:"1",color:"orange",trans_2:"",trans_3:"ms.talent.101",fallb_2:"T101",fallb_3:"抱火寝薪",command:"trigger detect.interact set 2101"}
execute if score $index_page setting matches 41 run function base:merge_sign {x:"-1",y:"11",z:"3",glow:"1",color:"orange",trans_2:"",trans_3:"ms.talent.102",fallb_2:"T102",fallb_3:"火冒三丈",command:"trigger detect.interact set 2102"}
execute if score $index_page setting matches 41 run function base:merge_sign {x:"-2",y:"11",z:"3",glow:"1",color:"orange",trans_2:"",trans_3:"ms.talent.103",fallb_2:"T103",fallb_3:"祛灵十字",command:"trigger detect.interact set 2103"}
execute if score $index_page setting matches 41 run function base:merge_sign {x:"-3",y:"11",z:"3",glow:"1",color:"orange",trans_2:"",trans_3:"ms.talent.104",fallb_2:"T104",fallb_3:"隐于迷雾",command:"trigger detect.interact set 2104"}
execute if score $index_page setting matches 41 run function base:merge_sign {x:"-4",y:"11",z:"3",glow:"1",color:"orange",trans_2:"",trans_3:"ms.talent.105",fallb_2:"T105",fallb_3:"舍近求远",command:"trigger detect.interact set 2105"}
execute if score $index_page setting matches 41 run function base:merge_sign {x:"-5",y:"11",z:"3",glow:"1",color:"orange",trans_2:"",trans_3:"ms.talent.106",fallb_2:"T106",fallb_3:"共振感应",command:"trigger detect.interact set 2106"}
execute if score $index_page setting matches 41 run function base:merge_sign {x:"-6",y:"11",z:"3",glow:"1",color:"orange",trans_2:"",trans_3:"ms.talent.107",fallb_2:"T107",fallb_3:"碎片侵蚀",command:"trigger detect.interact set 2107"}
execute if score $index_page setting matches 41 run function base:merge_sign {x:"-7",y:"11",z:"3",glow:"1",color:"orange",trans_2:"",trans_3:"",fallb_2:"",fallb_3:"",command:""}
execute if score $index_page setting matches 41 run function base:merge_sign {x:"-8",y:"11",z:"3",glow:"1",color:"orange",trans_2:"",trans_3:"",fallb_2:"",fallb_3:"",command:""}
execute if score $index_page setting matches 41 run summon item 0 12.1 4 {Tags:[index_entity],Item:{id:"crimson_fungus"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 41 run summon item -1 12.1 4 {Tags:[index_entity],Item:{id:"red_dye"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 41 run summon item -2 12.1 4 {Tags:[index_entity],Item:{id:"blade_pottery_sherd"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 41 run summon item -3 12.1 4 {Tags:[index_entity],Item:{id:"black_candle"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 41 run summon item -4 12.1 4 {Tags:[index_entity],Item:{id:"recovery_compass"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 41 run summon item -5 12.1 4 {Tags:[index_entity],Item:{id:"redstone"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 41 run summon item -6 12.1 4 {Tags:[index_entity],Item:{id:"amethyst_shard"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}

# 图鉴 R
execute if score $index_page setting matches 51 run function base:merge_sign {x:"0",y:"11",z:"3",glow:"1",color:"lime",trans_2:"",trans_3:"ms.relic.1",fallb_2:"R01",fallb_3:"无懈可击",command:"trigger detect.interact set 3001"}
execute if score $index_page setting matches 51 run function base:merge_sign {x:"-1",y:"11",z:"3",glow:"1",color:"lime",trans_2:"",trans_3:"ms.relic.2",fallb_2:"R02",fallb_3:"共鸣引力",command:"trigger detect.interact set 3002"}
execute if score $index_page setting matches 51 run function base:merge_sign {x:"-2",y:"11",z:"3",glow:"1",color:"lime",trans_2:"",trans_3:"ms.relic.3",fallb_2:"R03",fallb_3:"无垠时界",command:"trigger detect.interact set 3003"}
execute if score $index_page setting matches 51 run function base:merge_sign {x:"-3",y:"11",z:"3",glow:"1",color:"lime",trans_2:"",trans_3:"ms.relic.4",fallb_2:"R04",fallb_3:"相位替换",command:"trigger detect.interact set 3004"}
execute if score $index_page setting matches 51 run function base:merge_sign {x:"-4",y:"11",z:"3",glow:"1",color:"lime",trans_2:"",trans_3:"ms.relic.5",fallb_2:"R05",fallb_3:"高效制冷",command:"trigger detect.interact set 3005"}
execute if score $index_page setting matches 51 run function base:merge_sign {x:"-5",y:"11",z:"3",glow:"1",color:"lime",trans_2:"",trans_3:"ms.relic.6",fallb_2:"R06",fallb_3:"灵能冲击",command:"trigger detect.interact set 3006"}
execute if score $index_page setting matches 51 run function base:merge_sign {x:"-6",y:"11",z:"3",glow:"1",color:"lime",trans_2:"",trans_3:"ms.relic.7",fallb_2:"R07",fallb_3:"再生疗愈",command:"trigger detect.interact set 3007"}
execute if score $index_page setting matches 51 run function base:merge_sign {x:"-7",y:"11",z:"3",glow:"1",color:"lime",trans_2:"",trans_3:"",fallb_2:"",fallb_3:"",command:""}
execute if score $index_page setting matches 51 run function base:merge_sign {x:"-8",y:"11",z:"3",glow:"1",color:"lime",trans_2:"",trans_3:"",fallb_2:"",fallb_3:"",command:""}
execute if score $index_page setting matches 51 run summon item 0 12.1 4 {Tags:[index_entity],Item:{id:"iron_chestplate",components:{trim:{material:diamond,pattern:snout}}},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 51 run summon item -1 12.1 4 {Tags:[index_entity],Item:{id:"prismarine_shard"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 51 run summon item -2 12.1 4 {Tags:[index_entity],Item:{id:"clock"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 51 run summon item -3 12.1 4 {Tags:[index_entity],Item:{id:"shaper_armor_trim_smithing_template"},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 51 run summon item -4 12.1 4 {Tags:[index_entity],Item:{id:"player_head",components:{profile:{id:[I;-2028710611,-535870698,-1464817086,-1561423040],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk4Njc5NDUyMTg2OWU4MzI3ZWY4MWRiYzM1Yzk4NTZiYzQwNTFkZjk4ODhkODFlYWIyMTI0NDJiMTc2YTgyZiJ9fX0="}]}}},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 51 run summon item -5 12.1 4 {Tags:[index_entity],Item:{id:"crossbow",components:{charged_projectiles:[{id:tipped_arrow}]}},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute if score $index_page setting matches 51 run summon item -6 12.1 4 {Tags:[index_entity],Item:{id:"tipped_arrow",components:{potion_contents:{custom_color:12754943}}},PickupDelay:32767s,Age:-32768s,NoGravity:1b}