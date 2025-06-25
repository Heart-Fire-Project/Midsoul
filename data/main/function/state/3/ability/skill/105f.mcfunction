title @s[scores={setting.ability_actionbar=1..}] actionbar [{"translate":"ms.skill.over","fallback":"技能终止","color":"red"}," 🔁 ",{"translate":"ms.skill.105","fallback":"雾影阴霾"}]
playsound entity.player.attack.sweep player @a
particle sweep_attack ~ ~1 ~ 0.7 0.3 0.7 1 16
tag @s remove skill_on

# 触发击中效果，至多记录一次击中
execute unless entity @s[nbt={active_effects:[{id:"minecraft:weakness"}]}] as @a[team=soul,distance=..2,scores={state=0}] run damage @s 10
execute if entity @s[nbt={active_effects:[{id:"minecraft:weakness"}]}] as @a[team=soul,distance=..2,scores={state=0}] run damage @s 6
execute unless entity @a[team=soul,distance=..2,scores={state=0}] run scoreboard players remove @s temp.hit 1
execute as @a[team=soul,distance=..2,scores={state=0}] run function main:lib/player/hurt
function main:lib/player/hit

# 重置冷却
scoreboard players set @s tick.skill 15000