# 判定条件
tag @a[team=soul,distance=..4,scores={state=0,tick.invincible=0}] add S105

# 释放剑气
execute at @a[tag=S105] run particle sweep_attack ~ ~1 ~ 0 0 0 1 1 force @a
playsound entity.player.attack.sweep player @a
execute if entity @s[scores={tick.enhance=..0}] as @a[tag=S105] run damage @s 5
execute if entity @s[scores={tick.enhance=1..}] as @a[tag=S105] run damage @s 10
scoreboard players add @s skill.105 1

# 算作一次攻击
execute if entity @a[tag=S105] run tag @s add hit_soul
execute if entity @a[tag=S105] run scoreboard players add @s temp.hit 1
execute if entity @a[tag=S105] run scoreboard players remove @s[scores={skill.105=1..3}] tick.skill 12000

# 那如果没打到的话
execute unless entity @a[tag=S105] run scoreboard players set @s tick.skill 0

# 计算重计加速的时机
execute if entity @a[tag=S105] run scoreboard players operation @s[scores={skill.105=1..3}] skill.105s = @s tick.skill
execute if entity @a[tag=S105] run scoreboard players operation @s[scores={skill.105=1..3}] skill.105s *= #-1 data
execute if entity @a[tag=S105] run scoreboard players operation @s[scores={skill.105=1..3}] skill.105s /= #100 data
execute if entity @a[tag=S105] run scoreboard players operation @s[scores={skill.105=1..3}] skill.105s %= #20 data

tag @a remove S105