# 临时特效，可能也就这样了
scoreboard players operation @s stat_exp -= @s exp_max
scoreboard players add @s stat_level 1
playsound minecraft:block.beacon.power_select ambient @a ~ ~ ~ 1 1
particle minecraft:sculk_charge_pop ~ ~0.1 ~ 0.2 0.1 0.2 0.1 200 force @a
function main:state/0/exp/process
function base:set_exp {cacu:"cacu",source_current:"stat_exp",source_max:"exp_max",source_level:"stat_level",source_mem:"data",4:"#4",16:"#16",61:"#61",64:"#64",182:"#182",256:"#256"}