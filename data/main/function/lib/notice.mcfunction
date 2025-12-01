playsound item.book.page_turn block @s ~ ~ ~

# 1 - 交流反馈
tellraw @s[scores={temp=1}] [{text:"\n",color:"#EEEEEE"},{text:"» ",bold:true},{translate:"ms.notice.contact",fallback:"[联系我们]"}," ",{translate:"ms.notice.1",fallback:"交流与反馈"}]
tellraw @s[scores={temp=1}] ["",{text:"» ",bold:true},{translate:"ms.notice.1.1",fallback:"[QQ 群]",color:"#FFA488",click_event:{action:"open_url",url:"https://qm.qq.com/cgi-bin/qm/qr?k=YNaHDYBSXIR-Fo-bBjaANk5GCmKOZogo&authKey=t4k2yVndCqo/5jzIxYEpL1hxHRu44roVJ32G8meHgPHCMen05GsvcGLVz+f9LQGK"}}," ",{translate:"ms.notice.1.2",fallback:"[Discord]",color:"#0066FF",click_event:{action:"open_url",url:"https://discord.gg/jxUxX283Jd"}}," ",{translate:"ms.notice.1.3",fallback:"[Github]",color:"#7B63AB",click_event:{action:"open_url",url:"https://github.com/Heart-Fire-Project/Midsoul"}}," ",{translate:"ms.notice.1.4",fallback:"[官网]",color:"#FFDD55",click_event:{action:"open_url",url:"https://hfpro.top/"}}]

# 2 - 2.0 更新日志
tellraw @s[scores={temp=2}] [{text:"\n",color:"#ff720e"},{text:"» ",bold:true},{translate:"ms.notice.majorupdate",fallback:"[重大更新]"}," ",{translate:"ms.notice.2",fallback:"2.0 💠 混沌回响"}]
tellraw @s[scores={temp=2}] ["",{text:"» ",bold:true},{translate:"ms.notice.2.1",fallback:"欢迎来到午夜灵魂 2.0：混沌回响！本次更新在升级新版本的同时还新增了回响机制，此外还有大量的调整与优化！"},"   ",{translate:"ms.notice.2.2",fallback:"[点击这里以查看详细更新说明]",click_event:{action:"open_url",url:"https://github.com/Heart-Fire-Project/Midsoul/blob/plus/changelog.md"}}]

# 3 - 官方服务器？
tellraw @s[scores={temp=3}] [{text:"\n",color:"#6bb2fe"},{text:"» ",bold:true},{translate:"ms.notice.event",fallback:"[活动]"}," ",{translate:"ms.notice.3",fallback:"午夜灵魂官方服务器"}]
tellraw @s[scores={temp=3}] ["",{text:"» ",bold:true},{translate:"ms.notice.3.1",fallback:"🔒 该项目不在内部测试中启用"}]