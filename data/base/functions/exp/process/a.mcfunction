scoreboard players add @s stat_exp 1
scoreboard players remove @s temp_exp 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.7 2

schedule function base:exp/process/judge 5t replace