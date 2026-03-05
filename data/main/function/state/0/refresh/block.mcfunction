# 地图
fill -12 7 0 -12 7 -8 waxed_copper_bulb[lit=false]
fill 5 -12 18 5 -12 10 waxed_copper_bulb[lit=false]
execute if score $map setting matches -1 run setblock 5 -12 18 waxed_copper_bulb[lit=true]
execute if score $map setting matches -2 run setblock 5 -12 17 waxed_copper_bulb[lit=true]
execute if score $map setting matches -3 run setblock 5 -12 16 waxed_copper_bulb[lit=true]
execute if score $map setting matches -4 run setblock 5 -12 15 waxed_copper_bulb[lit=true]
execute if score $map setting matches -5 run setblock 5 -12 14 waxed_copper_bulb[lit=true]
execute if score $map setting matches -6 run setblock 5 -12 13 waxed_copper_bulb[lit=true]
execute if score $map setting matches -7 run setblock 5 -12 12 waxed_copper_bulb[lit=true]
execute if score $map setting matches -8 run setblock 5 -12 11 waxed_copper_bulb[lit=true]
execute if score $map setting matches -9 run setblock 5 -12 10 waxed_copper_bulb[lit=true]
execute if score $map_page setting matches 1 if score $map setting matches 0 run setblock -12 7 -8 waxed_copper_bulb[lit=true]
execute if score $map_page setting matches 1 if score $map setting matches 1 run setblock -12 7 -7 waxed_copper_bulb[lit=true]
execute if score $map_page setting matches 1 if score $map setting matches 2 run setblock -12 7 -6 waxed_copper_bulb[lit=true]
execute if score $map_page setting matches 1 if score $map setting matches 3 run setblock -12 7 -5 waxed_copper_bulb[lit=true]
execute if score $map_page setting matches 1 if score $map setting matches 4 run setblock -12 7 -4 waxed_copper_bulb[lit=true]

# 模式
fill -8 7 -12 0 7 -12 waxed_copper_bulb[lit=false]
execute if score $mode setting matches 1 run setblock -8 7 -12 waxed_copper_bulb[lit=true]
execute if score $mode setting matches 2 run setblock -7 7 -12 waxed_copper_bulb[lit=true]

# 回响概率
fill 1 8 4 -1 6 4 waxed_copper_bulb[lit=false] replace waxed_copper_bulb
execute if score $echo_chance setting matches 12.. run setblock 0 8 4 waxed_copper_bulb[lit=true]
execute if score $echo_chance setting matches 25.. run setblock -1 8 4 waxed_copper_bulb[lit=true]
execute if score $echo_chance setting matches 37.. run setblock -1 7 4 waxed_copper_bulb[lit=true]
execute if score $echo_chance setting matches 50.. run setblock -1 6 4 waxed_copper_bulb[lit=true]
execute if score $echo_chance setting matches 63.. run setblock 0 6 4 waxed_copper_bulb[lit=true]
execute if score $echo_chance setting matches 75.. run setblock 1 6 4 waxed_copper_bulb[lit=true]
execute if score $echo_chance setting matches 88.. run setblock 1 7 4 waxed_copper_bulb[lit=true]
execute if score $echo_chance setting matches 100.. run setblock 1 8 4 waxed_copper_bulb[lit=true]

# 回响禁用
fill -4 7 4 -8 7 4 waxed_copper_bulb[lit=false]
execute if score $echo_page setting matches 1 if data storage ms:echo {01:true} run setblock -4 7 4 waxed_copper_bulb[lit=true]
execute if score $echo_page setting matches 1 if data storage ms:echo {02:true} run setblock -5 7 4 waxed_copper_bulb[lit=true]
execute if score $echo_page setting matches 1 if data storage ms:echo {03:true} run setblock -6 7 4 waxed_copper_bulb[lit=true]
execute if score $echo_page setting matches 1 if data storage ms:echo {04:true} run setblock -7 7 4 waxed_copper_bulb[lit=true]
execute if score $echo_page setting matches 1 if data storage ms:echo {05:true} run setblock -8 7 4 waxed_copper_bulb[lit=true]
execute if score $echo_page setting matches 2 if data storage ms:echo {06:true} run setblock -4 7 4 waxed_copper_bulb[lit=true]
execute if score $echo_page setting matches 2 if data storage ms:echo {07:true} run setblock -5 7 4 waxed_copper_bulb[lit=true]
execute if score $echo_page setting matches 2 if data storage ms:echo {08:true} run setblock -6 7 4 waxed_copper_bulb[lit=true]
execute if score $echo_page setting matches 2 if data storage ms:echo {09:true} run setblock -7 7 4 waxed_copper_bulb[lit=true]
execute if score $echo_page setting matches 2 if data storage ms:echo {10:true} run setblock -8 7 4 waxed_copper_bulb[lit=true]
fill -4 6 3 -8 6 3 crimson_wall_sign[facing=north]
execute if score $echo_page setting matches 1 if data storage ms:echo {01:true} run setblock -4 6 3 warped_wall_sign[facing=north]
execute if score $echo_page setting matches 1 if data storage ms:echo {02:true} run setblock -5 6 3 warped_wall_sign[facing=north]
execute if score $echo_page setting matches 1 if data storage ms:echo {03:true} run setblock -6 6 3 warped_wall_sign[facing=north]
execute if score $echo_page setting matches 1 if data storage ms:echo {04:true} run setblock -7 6 3 warped_wall_sign[facing=north]
execute if score $echo_page setting matches 1 if data storage ms:echo {05:true} run setblock -8 6 3 warped_wall_sign[facing=north]
execute if score $echo_page setting matches 2 if data storage ms:echo {06:true} run setblock -4 6 3 warped_wall_sign[facing=north]
execute if score $echo_page setting matches 2 if data storage ms:echo {07:true} run setblock -5 6 3 warped_wall_sign[facing=north]
execute if score $echo_page setting matches 2 if data storage ms:echo {08:true} run setblock -6 6 3 warped_wall_sign[facing=north]
execute if score $echo_page setting matches 2 if data storage ms:echo {09:true} run setblock -7 6 3 warped_wall_sign[facing=north]
execute if score $echo_page setting matches 2 if data storage ms:echo {10:true} run setblock -8 6 3 warped_wall_sign[facing=north]

# 能力分配
fill 4 7 0 4 7 2 waxed_copper_bulb[lit=false]
execute if score $ability_assign setting matches 1 run setblock 4 7 0 waxed_copper_bulb[lit=true]
execute if score $ability_assign setting matches 2 run setblock 4 7 1 waxed_copper_bulb[lit=true]
execute if score $ability_assign setting matches 3 run fill 4 7 1 4 7 2 waxed_copper_bulb[lit=true]
execute if score $ability_assign setting matches 4 run fill 4 7 0 4 7 1 waxed_copper_bulb[lit=true]
execute if score $ability_assign setting matches 5 run fill 4 7 0 4 7 2 waxed_copper_bulb[lit=true]

# 模式特有设定
fill 3 5 -2 3 9 -11 air