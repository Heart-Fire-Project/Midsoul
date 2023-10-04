scoreboard players add @s stat_exp 2
scoreboard players remove @s temp_exp 2
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.7 2

schedule function base:exp/process/judge 3t replace