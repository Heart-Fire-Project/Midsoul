stopsound @s record
scoreboard players operation @s music = @s temp

# 13 [2:58]
playsound music_disc.13 record @s[scores={temp=11}] 0 1000000 0 70000
scoreboard players set @s[scores={temp=11}] tick.music 200

# ward [4:11]
playsound music_disc.ward record @s[scores={temp=12}] 0 1000000 0 70000
scoreboard players set @s[scores={temp=12}] tick.music 270

# mellohi [1:36]
playsound music_disc.mellohi record @s[scores={temp=13}] 0 1000000 0 70000
scoreboard players set @s[scores={temp=13}] tick.music 120