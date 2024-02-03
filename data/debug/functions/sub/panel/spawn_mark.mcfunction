tellraw @s [{"text":" » ","bold":true},{"translate":"ms.mark.spawnegg","fallback":"对应生成器已发送至快捷栏最后一格！","bold":false}]
$item replace entity @s hotbar.8 with minecraft:shulker_spawn_egg{EntityTag:{Color:$(colorid),Tags:[summon_$(type)]}}
$item modify entity @s hotbar.8 debug:$(colorid)