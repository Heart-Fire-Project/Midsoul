# 判定条件
tag @a[team=soul,distance=..3,scores={state=0,tick.invincible=0}] add S105

# 释放剑气
execute at @a[tag=S105] run particle sweep_attack ~ ~1 ~ 0 0 0 1 1 force @a
playsound entity.player.attack.sweep player @a
execute if entity @s[scores={tick.enhance=0}] as @a[tag=S105] run damage @s 10
execute if entity @s[scores={tick.enhance=1..}] as @a[tag=S105] run damage @s 20
scoreboard players add @s skill.105 1

# 记作一次攻击
execute if entity @a[tag=S105] run function main:lib/ability/base/player/hit

# 免费次数已经用尽
scoreboard players set @s[scores={skill.105=2}] tick.skill 0

tag @a remove S105