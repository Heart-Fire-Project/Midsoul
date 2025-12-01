stopsound @s record
scoreboard players operation @s music = @s temp

# Creator(SP) [1:14]
execute if score @s temp matches 0 run playsound music_disc.creator_music_box record @s 0 1000000 0 100000
execute if score @s temp matches 0 run scoreboard players set @s tick.music 81

# far [2:54]
execute if score @s temp matches 1 run playsound music_disc.far record @s 0 1000000 0 100000
execute if score @s temp matches 1 run scoreboard players set @s tick.music 181

# Relic [3:38]
execute if score @s temp matches 2 run playsound music_disc.relic record @s 0 1000000 0 100000
execute if score @s temp matches 2 run scoreboard players set @s tick.music 225

# mall [3:17]
execute if score @s temp matches 3 run playsound music_disc.mall record @s 0 1000000 0 100000
execute if score @s temp matches 3 run scoreboard players set @s tick.music 204

# wait [3:51]
execute if score @s temp matches 4 run playsound music_disc.wait record @s 0 1000000 0 100000
execute if score @s temp matches 4 run scoreboard players set @s tick.music 238

# otherside [3:15]
execute if score @s temp matches 5 run playsound music_disc.otherside record @s 0 1000000 0 100000
execute if score @s temp matches 5 run scoreboard players set @s tick.music 202

# stal [2:30]
execute if score @s temp matches 6 run playsound music_disc.stal record @s 0 1000000 0 100000
execute if score @s temp matches 6 run scoreboard players set @s tick.music 157

# strad [3:08]
execute if score @s temp matches 7 run playsound music_disc.strad record @s 0 1000000 0 100000
execute if score @s temp matches 7 run scoreboard players set @s tick.music 195

# Creator [2:57]
execute if score @s temp matches 8 run playsound music_disc.creator record @s 0 1000000 0 100000
execute if score @s temp matches 8 run scoreboard players set @s tick.music 185

# blocks [5:45]
execute if score @s temp matches 9 run playsound music_disc.blocks record @s 0 1000000 0 100000
execute if score @s temp matches 9 run scoreboard players set @s tick.music 352