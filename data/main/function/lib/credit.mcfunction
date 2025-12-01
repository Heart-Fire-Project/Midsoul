playsound item.book.page_turn block @s ~ ~ ~

# 1 - 架构 | Roser
execute if score @s temp matches 1 run tellraw @s [{text:"",color:"#C3D4F1"},{text:"\n» ",bold:true},{translate:"ms.credit.1",fallback:"架构"}," | ",{translate:"ms.credit.roser",fallback:"Roser"}]
execute if score @s temp matches 1 run tellraw @s [{text:"",color:"white"},{text:"» ",bold:true},{translate:"ms.credit.1.desc",fallback:"午夜灵魂主创，被适配新版本整的死去活来"}]
execute if score @s temp matches 1 run tellraw @s [{text:"✒ ",color:"gray"},{translate:"ms.credit.1.note",fallback:"纵使万象流转去，望那奇世仍依旧"}]

# 2 - 创想 | 思遥方
execute if score @s temp matches 2 run tellraw @s [{text:"",color:"#A4D9FF"},{text:"\n» ",bold:true},{translate:"ms.credit.2",fallback:"创想"}," | ",{translate:"ms.credit.seayay",fallback:"思遥方"}]
execute if score @s temp matches 2 run tellraw @s [{text:"",color:"white"},{text:"» ",bold:true},{translate:"ms.credit.2.desc",fallback:"午夜灵魂主创，因苦来兮苦而变得有刺无刺"}]
execute if score @s temp matches 2 run tellraw @s [{text:"✒ ",color:"gray"},{translate:"ms.credit.2.note",fallback:"“能陪我组一辈子的乐队吗？”"}]

# 3 - 建筑 | 烛月yuzuki
execute if score @s temp matches 3 run tellraw @s [{text:"",color:"#61A1A9"},{text:"\n» ",bold:true},{translate:"ms.credit.3",fallback:"建筑"}," | ",{translate:"ms.credit.yuzuki",fallback:"烛月yuzuki"}]
execute if score @s temp matches 3 run tellraw @s [{text:"",color:"white"},{text:"» ",bold:true},{translate:"ms.credit.3.desc",fallback:"心火计划御用建筑师，也是我们最好的朋友"}]
execute if score @s temp matches 3 run tellraw @s [{text:"✒ ",color:"gray"},{translate:"ms.credit.3.note",fallback:"想得到幸福的话，就视而不见吧"}]

# 4 - 翻译 | *翻译者自己填
execute if score @s temp matches 4 run tellraw @s [{text:"",color:"#C3AC98"},{text:"\n» ",bold:true},{translate:"ms.credit.4",fallback:"翻译"}," | ",{translate:"ms.credit.translator",fallback:"[译者名]"}]
execute if score @s temp matches 4 run tellraw @s [{text:"",color:"white"},{text:"» ",bold:true},{translate:"ms.credit.4.desc",fallback:"[介绍你自己]"}]
execute if score @s temp matches 4 run tellraw @s [{text:"✒ ",color:"gray"},{translate:"ms.credit.4.note",fallback:"[在这里留言，不要骂我的文案谢谢]"}]

# 5 - 测试人员
execute if score @s temp matches 5 run tellraw @s [{text:"",color:"#339A8D"},{text:"\n» ",bold:true},"Σ ",{translate:"ms.credit.test.1",fallback:"重置测试"}]
execute if score @s temp matches 5 run tellraw @s [{text:"A02wa",color:"white"},{text:"/",color:"gray"},"Enmusubi",{text:"/",color:"gray"},"Moyu402",{text:"/",color:"gray"},"KSXG",{text:"/",color:"gray"},"Last_Dust",{text:"/",color:"gray"},"Nai_ShenShen",{text:"/",color:"gray"},"YQ_CN"]
execute if score @s temp matches 5 run tellraw @s [{text:"",color:"#FFCA95"},{text:"» ",bold:true},"2 ",{translate:"ms.credit.test.2",fallback:"混沌测试"}]
execute if score @s temp matches 5 run tellraw @s [{text:"544544",color:"white"},{text:"/",color:"gray"},"_x1aoyu",{text:"/",color:"gray"},"AiYanYe",{text:"/",color:"gray"},"amxs123",{text:"/",color:"gray"},"Bai_cu",{text:"/",color:"gray"},"beiweide303",{text:"/",color:"gray"},"BS__jiangsss",{text:"/",color:"gray"},"chentuaaa",{text:"/",color:"gray"},"Lao_xieeeee",{text:"/",color:"gray"},"LoyVol",{text:"/",color:"gray"},"OathMoon",{text:"/",color:"gray"},"lxkfallingstar",{text:"/",color:"gray"},"Mid______night",{text:"/",color:"gray"},"mu_yun_a",{text:"/",color:"gray"},"quiet1234567",{text:"/",color:"gray"},"SaKuraYeager",{text:"/",color:"gray"},"ShenLan_SL03",{text:"/",color:"gray"},"Tian_wg",{text:"/",color:"gray"},"White_Fir",{text:"/",color:"gray"},"xin_jie127",{text:"/",color:"gray"},"XuanYu1725_XYU",{text:"/",color:"gray"},"yashanO",{text:"/",color:"gray"},"YeLeiNa___",{text:"/",color:"gray"},"YUHENZZ"]

# 6 - 以及，还有你
execute if score @s temp matches 6 run tellraw @s [{text:"",color:"#A28CF3"},{text:"\n» ",bold:true},{translate:"",fallback:"当然……"}]
execute if score @s temp matches 6 run tellraw @s [{text:"",color:"white"},{text:"» ",bold:true},{translate:"ms.credit.you.desc",fallback:"最重要的，万分感谢你的游玩与支持！"}]

# 7 - 喵？
execute if score @s temp matches 7 run tellraw @s [{text:"",color:"#97B9E0"},{text:"\n» ",bold:true},{translate:"ms.credit.special",fallback:"特殊"}," | ",{translate:"ms.credit.mol1sama",fallback:"Mol1Sama"}]
execute if score @s temp matches 7 run tellraw @s [{text:"",color:"white"},{text:"» ",bold:true},{translate:"ms.credit.6.desc",fallback:"参与甚至自己组织了多场测试的优秀小猫，提供了诸多宝贵意见"}]
execute if score @s temp matches 7 run tellraw @s [{text:"✒ ",color:"gray"},{translate:"ms.credit.6.note",fallback:"加强灵灯之筑喵，加强灵灯之筑谢谢喵"}]