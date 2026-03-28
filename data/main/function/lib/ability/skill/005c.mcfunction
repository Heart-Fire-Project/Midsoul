# 确认在范围内 | 选定传送点
tag @e remove S005t
execute as @e[tag=S005m] if score @s entity_id = $entity_id temp run tag @s add S005t

# 先放置新锚点（带音效）再传送
function main:lib/ability/skill/005a
tp @s @e[tag=S005t,limit=1]
execute if entity @e[tag=S005t] run particle falling_obsidian_tear ~ ~1 ~ 0.2 0.5 0.2 3 64 force @a
kill @e[tag=S005t]