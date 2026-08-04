# 受击 - 过滤特定伤害类型
# 侦测是否是符合条件的受击者
execute if entity @s[scores={state=0,tick.invincible=0}] on attacker run tag @s add rated_attack

# 还有救
effect give @s[scores={detect.die=0}] speed 7 4
scoreboard players set @s[scores={tick.invincible=..140,detect.die=0}] tick.invincible 140

# 教程
advancement grant @s only main:tutorial/player/1