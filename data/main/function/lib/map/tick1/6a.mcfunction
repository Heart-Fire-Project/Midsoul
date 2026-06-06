# 重设按钮
setblock -1865 68 2226 oak_button[facing=west]
setblock -1823 68 2213 spruce_button[facing=east]
setblock -1835 68 2173 dark_oak_button[facing=east]
setblock -1874 67 2174 birch_button[facing=south]

# 粒子特效
particle cloud -1864.3 68.5 2226 0.2 0.3 0.2 0.05 12 force @a
particle cloud -1822.7 68.5 2213 0.2 0.3 0.2 0.05 12 force @a
particle cloud -1834.7 68.5 2173 0.2 0.3 0.2 0.05 12 force @a
particle cloud -1874 67.5 2174.3 0.2 0.3 0.2 0.05 12 force @a

# 传送玩家
tp @s ~60 ~-25 ~-33

# 提示与音效
tellraw @a [{text:"🗘 ",bold:true,color:"#DDDDDD"},{translate:"ms.map.6.refresh",fallback:"游船节点已恢复运行",bold:false}]
playsound block.piston.contract ambient @a ~ ~ ~ 10000