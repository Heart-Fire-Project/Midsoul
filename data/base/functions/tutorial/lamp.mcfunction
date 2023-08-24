tellraw @s[team=alive,tag=!soul_died] [{"text": " » ","bold": true,"color": "aqua"},{"translate":"ms.tutorial.lamp.soul","fallback": "队友垂死时会生成一个灵魂之灯! 一分钟内点亮它来救助队友!","bold": false}]
tellraw @s[team=alive,tag=soul_died] [{"text": " » ","bold": true,"color": "aqua"},{"translate":"ms.tutorial.lamp.dying","fallback": "只要队友在一分钟内点亮灵魂之灯你就可以恢复……希望你能撑过去","bold": false}]
tellraw @s[team=protect] [{"text": " » ","bold": true,"color": "red"},{"translate":"ms.tutorial.lamp.protect","fallback": "垂死的灵魂会在灵魂之灯被点亮后恢复并暂时无敌! 快去阻止灵魂之灯被点亮!","bold": false}]

tag @s add lamp_tr