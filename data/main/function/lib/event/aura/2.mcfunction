# 灵气弥散 | 去除碎片发光，若有灵魂在 12 格内再回调
data modify entity @s Glowing set value 0b
execute if entity @a[team=soul,distance=..12,scores={state=0}] run data modify entity @s Glowing set value 1b