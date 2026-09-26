# 准备重设加速时长
scoreboard players operation @s skill.107s = @s tick.skill
scoreboard players operation @s skill.107s *= #-1 data
scoreboard players operation @s skill.107s /= #100 data
scoreboard players operation @s skill.107s %= #20 data
scoreboard players set @s[scores={tick.skill=-4000..}] skill.107s -1

# 免费赠送的一秒
effect give @s speed 1 0