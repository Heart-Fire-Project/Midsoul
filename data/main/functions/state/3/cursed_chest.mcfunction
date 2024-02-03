# 灵魂方效果
effect give @a[team=soul,distance=..3.5] glowing 1 0
effect give @a[team=soul,distance=..3.5] slowness 1 0

# 守卫者效果
effect give @e[team=protect,distance=..3.5] speed 1 0
execute if entity @e[team=protect,distance=..3.5] run effect give @a[limit=1,sort=furthest,team=soul] glowing 1 0