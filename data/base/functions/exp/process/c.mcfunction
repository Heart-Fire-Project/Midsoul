scoreboard players add @s stat_exp 3
scoreboard players remove @s temp_exp 3
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.7 2

schedule function base:exp/process/judge 2t replace