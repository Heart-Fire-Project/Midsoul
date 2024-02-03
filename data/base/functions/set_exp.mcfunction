#> base:set_exp
#  设置经验条
#  @input cacu source_current source_max source_level source_mem 4 16 61 64 182 256
#  @input 需计分板包含常数项 4 16 61 64 182 256

# 设置经验
$scoreboard players operation $exp $(cacu) = @s $(source_current)
$scoreboard players operation $exp $(cacu) *= $(182) $(source_mem)
$scoreboard players operation $exp $(cacu) /= @s $(source_max)
xp set @s 38 levels
$execute if score $exp $(cacu) matches 0..60 run xp set @s 0 points
$execute if score $exp $(cacu) matches 61..121 run xp set @s 61 points
$execute if score $exp $(cacu) matches 122.. run xp set @s 122 points
$scoreboard players operation $exp $(cacu) %= $(61) $(source_mem)
$execute if score $exp $(cacu) matches 16..31 run xp add @s 16 points
$execute if score $exp $(cacu) matches 32..47 run xp add @s 32 points
$execute if score $exp $(cacu) matches 48.. run xp add @s 48 points
$scoreboard players operation $exp $(cacu) %= $(16) $(source_mem)
$execute if score $exp $(cacu) matches 4..7 run xp add @s 4 points
$execute if score $exp $(cacu) matches 8..11 run xp add @s 8 points
$execute if score $exp $(cacu) matches 12.. run xp add @s 12 points
$scoreboard players operation $exp $(cacu) %= $(4) $(source_mem)
$execute if score $exp $(cacu) matches 1 run xp add @s 1 points
$execute if score $exp $(cacu) matches 2 run xp add @s 2 points
$execute if score $exp $(cacu) matches 3 run xp add @s 3 points

# 设置等级
$scoreboard players operation $exp $(cacu) = @s $(source_level)
$scoreboard players operation $exp $(cacu) %= $(256) $(source_mem)
$execute if score $exp $(cacu) matches 0..63 run xp set @s 0 levels
$execute if score $exp $(cacu) matches 64..127 run xp set @s 64 levels
$execute if score $exp $(cacu) matches 128..191 run xp set @s 128 levels
$execute if score $exp $(cacu) matches 192.. run xp set @s 192 levels
$scoreboard players operation $exp $(cacu) %= $(64) $(source_mem)
$execute if score $exp $(cacu) matches 16..31 run xp add @s 16 levels
$execute if score $exp $(cacu) matches 32..47 run xp add @s 32 levels
$execute if score $exp $(cacu) matches 48.. run xp add @s 48 levels
$scoreboard players operation $exp $(cacu) %= $(16) $(source_mem)
$execute if score $exp $(cacu) matches 4..7 run xp add @s 4 levels
$execute if score $exp $(cacu) matches 8..11 run xp add @s 8 levels
$execute if score $exp $(cacu) matches 12.. run xp add @s 12 levels
$scoreboard players operation $exp $(cacu) %= $(4) $(source_mem)
$execute if score $exp $(cacu) matches 1 run xp add @s 1 levels
$execute if score $exp $(cacu) matches 2 run xp add @s 2 levels
$execute if score $exp $(cacu) matches 3 run xp add @s 3 levels