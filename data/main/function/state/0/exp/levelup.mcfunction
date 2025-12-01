# 非临时特效，这次真的这样啦
scoreboard players operation @s stat.exp -= @s exp.max
scoreboard players add @s stat.level 1
playsound block.trial_spawner.ominous_activate player @a ~ ~ ~
particle trial_spawner_detection_ominous ~ ~0.1 ~ 0.2 0.2 0.2 0 64
scoreboard players set @s tick.general -71

scoreboard players operation @s temp = @s[scores={stat.level=..127}] stat.level
scoreboard players set @s[scores={stat.level=..127}] temp2 0
function main:state/0/exp/maximum