stopsound @s record
scoreboard players operation @s music = @s temp

# Creator(SP) [1:14]
playsound music_disc.creator_music_box record @s[scores={temp=0}] 0 1000000 0 100000
scoreboard players set @s[scores={temp=0}] tick.music 81

# far [2:54]
playsound music_disc.far record @s[scores={temp=1}] 0 1000000 0 100000
scoreboard players set @s[scores={temp=1}] tick.music 181

# Relic [3:38]
playsound music_disc.relic record @s[scores={temp=2}] 0 1000000 0 100000
scoreboard players set @s[scores={temp=2}] tick.music 225

# mall [3:17]
playsound music_disc.mall record @s[scores={temp=3}] 0 1000000 0 100000
scoreboard players set @s[scores={temp=3}] tick.music 204

# wait [3:51]
playsound music_disc.wait record @s[scores={temp=4}] 0 1000000 0 100000
scoreboard players set @s[scores={temp=4}] tick.music 238

# otherside [3:15]
playsound music_disc.otherside record @s[scores={temp=5}] 0 1000000 0 100000
scoreboard players set @s[scores={temp=5}] tick.music 202

# stal [2:30]
playsound music_disc.stal record @s[scores={temp=6}] 0 1000000 0 100000
scoreboard players set @s[scores={temp=6}] tick.music 157

# strad [3:08]
playsound music_disc.strad record @s[scores={temp=7}] 0 1000000 0 100000
scoreboard players set @s[scores={temp=7}] tick.music 195

# Creator [2:57]
playsound music_disc.creator record @s[scores={temp=8}] 0 1000000 0 100000
scoreboard players set @s[scores={temp=8}] tick.music 185

# blocks [5:45]
playsound music_disc.blocks record @s[scores={temp=9}] 0 1000000 0 100000
scoreboard players set @s[scores={temp=9}] tick.music 352