# 确定增减量
execute as @s[scores={exp.temp=1..5}] run data merge storage ms:temp {exp:"1"}
execute as @s[scores={exp.temp=6..10}] run data merge storage ms:temp {exp:"2"}
execute as @s[scores={exp.temp=11..20}] run data merge storage ms:temp {exp:"3"}
execute as @s[scores={exp.temp=21..30}] run data merge storage ms:temp {exp:"4"}
execute as @s[scores={exp.temp=31..70}] run data merge storage ms:temp {exp:"5"}
execute as @s[scores={exp.temp=71..120}] store result storage ms:temp exp int 1 run random value 3..10
execute as @s[scores={exp.temp=121..500}] store result storage ms:temp exp int 1 run random value 10..40
execute as @s[scores={exp.temp=501..1000}] store result storage ms:temp exp int 1 run random value 40..70
execute as @s[scores={exp.temp=1000..}] store result storage ms:temp exp int 1 run random value 70..100

# 执行运算
execute as @s[scores={exp.temp=1..}] run function main:state/0/exp/operate with storage ms:temp

# 判断是否升级
execute if score @s[scores={stat.level=..127}] stat.exp >= @s exp.max run function main:state/0/exp/levelup

# 显示经验标题栏
title @s[scores={stat.level=..128,tick.general=0..,state=0}] actionbar [{score:{objective:"exp.temp",name:"@s"}}," + ",{score:{objective:"stat.exp",name:"@s"},color:"aqua"},{text:"/",color:"#7367F0"},{score:{objective:"exp.max",name:"@s"},color:"#7367F0"}]
title @s[scores={stat.level=128..,tick.general=0..,state=0}] actionbar [{score:{objective:"exp.temp",name:"@s"}}," + ",{score:{objective:"stat.exp",name:"@s"},color:"aqua"},{text:"/ -",color:"#7367F0"}]

# 显示升级特效
scoreboard players operation @s temp = @s stat.level
scoreboard players operation @s temp += #-1 data
title @s[scores={tick.general=-71,state=0}] actionbar ""
title @s[scores={tick.general=-69,state=0}] actionbar ["",{score:{name:"@s",objective:"temp"},color:"aqua"}," »»»»»»» ",{score:{name:"@s",objective:"stat.level"}}]
title @s[scores={tick.general=-67,state=0}] actionbar ""
title @s[scores={tick.general=-65,state=0}] actionbar ["",{score:{name:"@s",objective:"temp"},color:"aqua"}," »»»»»»» ",{score:{name:"@s",objective:"stat.level"}}]
title @s[scores={tick.general=-63,state=0}] actionbar ""
title @s[scores={tick.general=-61,state=0}] actionbar ["",{score:{name:"@s",objective:"temp"},color:"aqua"}," »»»»»»» ",{score:{name:"@s",objective:"stat.level"}}]
title @s[scores={tick.general=-47,state=0}] actionbar ["",{score:{name:"@s",objective:"temp"},color:"#58F2FE"},{text:" »",color:"#58F2FE"},"»»»»»» ",{score:{name:"@s",objective:"stat.level"}}]
title @s[scores={tick.general=-45,state=0}] actionbar ["",{score:{name:"@s",objective:"temp"},color:"#5AE6FD"},{text:" »»",color:"#5AE6FD"},"»»»»» ",{score:{name:"@s",objective:"stat.level"}}]
title @s[scores={tick.general=-43,state=0}] actionbar ["",{score:{name:"@s",objective:"temp"},color:"#5DD9FB"},{text:" »»»",color:"#5DD9FB"},"»»»» ",{score:{name:"@s",objective:"stat.level"}}]
title @s[scores={tick.general=-41,state=0}] actionbar ["",{score:{name:"@s",objective:"temp"},color:"#5FCCFA"},{text:" »»»»",color:"#5FCCFA"},"»»» ",{score:{name:"@s",objective:"stat.level"}}]
title @s[scores={tick.general=-39,state=0}] actionbar ["",{score:{name:"@s",objective:"temp"},color:"#62C0F9"},{text:" »»»»»",color:"#62C0F9"},"»» ",{score:{name:"@s",objective:"stat.level"}}]
title @s[scores={tick.general=-37,state=0}] actionbar ["",{score:{name:"@s",objective:"temp"}}," »",{text:"»»»»»",color:"#64B3F8"},"» ",{score:{name:"@s",objective:"stat.level"}}]
title @s[scores={tick.general=-35,state=0}] actionbar ["",{score:{name:"@s",objective:"temp"}}," »»",{text:"»»»»» ",color:"#67A6F6"},{score:{name:"@s",objective:"stat.level"},color:"#67A6F6"}]
title @s[scores={tick.general=-33,state=0}] actionbar ["",{score:{name:"@s",objective:"temp"}}," »»»",{text:"»»»» ",color:"#699AF5"},{score:{name:"@s",objective:"stat.level"},color:"#699AF5"}]
title @s[scores={tick.general=-31,state=0}] actionbar ["",{score:{name:"@s",objective:"temp"}}," »»»»",{text:"»»» ",color:"#6C8DF4"},{score:{name:"@s",objective:"stat.level"},color:"#6C8DF4"}]
title @s[scores={tick.general=-29,state=0}] actionbar ["",{score:{name:"@s",objective:"temp"}}," »»»»»",{text:"»» ",color:"#6E80F3"},{score:{name:"@s",objective:"stat.level"},color:"#6E80F3"}]
title @s[scores={tick.general=-27,state=0}] actionbar ["",{score:{name:"@s",objective:"temp"}}," »»»»»»",{text:"» ",color:"#7174F1"},{score:{name:"@s",objective:"stat.level"},color:"#7174F1"}]
title @s[scores={tick.general=-25,state=0}] actionbar ["",{score:{name:"@s",objective:"temp"}}," »»»»»»» ",{score:{name:"@s",objective:"stat.level"},color:"#7367F0"}]
title @s[scores={tick.general=-09,state=0}] actionbar ""
title @s[scores={tick.general=-07,state=0}] actionbar ["",{score:{name:"@s",objective:"temp"}}," »»»»»»» ",{score:{name:"@s",objective:"stat.level"},color:"#7367F0"}]
title @s[scores={tick.general=-05,state=0}] actionbar ""
title @s[scores={tick.general=-03,state=0}] actionbar ["",{score:{name:"@s",objective:"temp"}}," »»»»»»» ",{score:{name:"@s",objective:"stat.level"},color:"#7367F0"}]
title @s[scores={tick.general=-01,state=0}] actionbar ""

# 判定下一次间隔
scoreboard players set @s[scores={exp.temp=1..10,tick.general=-1..}] tick.general 5
scoreboard players set @s[scores={exp.temp=11..20,tick.general=-1..4}] tick.general 4
scoreboard players set @s[scores={exp.temp=21..30,tick.general=-1..3}] tick.general 3
scoreboard players set @s[scores={exp.temp=31..70,tick.general=-1..2}] tick.general 2
scoreboard players set @s[scores={exp.temp=71..,tick.general=-1..1}] tick.general 1

# 经验栏刷新
function base:set_exp {current:"stat.exp",max:"exp.max",level:"stat.level"}
experience set @s[scores={stat.level=128..}] 993 points