# 诅咒 | 周边环境
effect give @a[team=soul,distance=..2.5,scores={state=0}] glowing 1 0
effect give @a[team=soul,distance=..2.5,scores={state=0}] slowness 1 0
effect give @a[team=guardian,distance=..2.5] speed 1 0
execute if entity @a[team=guardian,distance=..2.5] run effect give @a[team=soul,scores={state=0}] glowing 1 0