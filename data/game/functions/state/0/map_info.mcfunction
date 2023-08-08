execute if score $map_select data matches 1 run tellraw @s {"translate":"ms.map.1.desc","fallback":"匿于峡间的小镇, 圣殿在此祝福各位","color":"gray"}
execute if score $map_select data matches 2 run tellraw @s {"translate":"ms.map.2.desc","fallback":"镇压灵魂之所, 复生与焚尽, 皆在一念之间","color":"gray"}
execute if score $map_select data matches 3 run tellraw @s {"translate":"ms.map.3.desc","fallback":"平静的湖面波澜不起, 本该热闹的村庄却也寂静","color":"gray"}

execute if score $map_select data matches 1 run tellraw @s [" ◈ ",{"translate":"ms.map.size","fallback":"地图大小"},{"text":" | »»»","color": "yellow"},{"text": "»»","color": "white"}]
execute if score $map_select data matches 2 run tellraw @s [" ◈ ",{"translate":"ms.map.size","fallback":"地图大小"},{"text":" | »»","color": "green"},{"text": "»»»","color": "white"}]
execute if score $map_select data matches 3 run tellraw @s [" ◈ ",{"translate":"ms.map.size","fallback":"地图大小"},{"text":" | »»»»»","color": "red"},{"text": "","color": "white"}]

execute if score $map_select data matches 1 run tellraw @s [" ◈ ",{"translate":"ms.map.complex","fallback":"复杂程度"},{"text":" | »»","color": "green"},{"text": "»»»","color": "white"}]
execute if score $map_select data matches 2 run tellraw @s [" ◈ ",{"translate":"ms.map.complex","fallback":"复杂程度"},{"text":" | »»»»","color": "gold"},{"text": "»","color": "white"}]
execute if score $map_select data matches 3 run tellraw @s [" ◈ ",{"translate":"ms.map.complex","fallback":"复杂程度"},{"text":" | »»»»»","color": "red"},{"text": "","color": "white"}]

execute if score $map_select data matches 1 run tellraw @s [" ◈ ",{"translate":"ms.map.author","fallback":"作者鸣谢"}," | WHLDTITAN"]
execute if score $map_select data matches 2 run tellraw @s [" ◈ ",{"translate":"ms.map.author","fallback":"作者鸣谢"}," | Kapanas & oozner"]
execute if score $map_select data matches 3 run tellraw @s [" ◈ ",{"translate":"ms.map.author","fallback":"作者鸣谢"}," | ZachOBuilds"]