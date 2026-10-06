# 先同步
execute if data storage ms:ability {0:true} run scoreboard players operation @s[team=soul,scores={setting.inherit_choice=1}] skill = @s rec.skill_soul
execute if data storage ms:ability {0:true} run scoreboard players operation @s[team=soul] rec.skill_soul = @s skill
execute if data storage ms:ability {1:true} run scoreboard players operation @s[team=soul,scores={setting.inherit_choice=1}] talent_1 = @s rec.talent_1_soul
execute if data storage ms:ability {1:true} run scoreboard players operation @s[team=soul] rec.talent_1_soul = @s talent_1
execute if data storage ms:ability {2:true} run scoreboard players operation @s[team=soul,scores={setting.inherit_choice=1}] talent_2 = @s rec.talent_2_soul
execute if data storage ms:ability {2:true} run scoreboard players operation @s[team=soul] rec.talent_2_soul = @s talent_2
execute if data storage ms:ability {0:true} run scoreboard players operation @s[team=guardian,scores={setting.inherit_choice=1}] skill = @s rec.skill_guar
execute if data storage ms:ability {0:true} run scoreboard players operation @s[team=guardian] rec.skill_guar = @s skill
execute if data storage ms:ability {1:true} run scoreboard players operation @s[team=guardian,scores={setting.inherit_choice=1}] talent_1 = @s rec.talent_1_guar
execute if data storage ms:ability {1:true} run scoreboard players operation @s[team=guardian] rec.talent_1_guar = @s talent_1
execute if data storage ms:ability {2:true} run scoreboard players operation @s[team=guardian,scores={setting.inherit_choice=1}] talent_2 = @s rec.talent_2_guar
execute if data storage ms:ability {2:true} run scoreboard players operation @s[team=guardian] rec.talent_2_guar = @s talent_2

# 计算将会跳转的页数
scoreboard players operation @s ui.skill = @s skill
scoreboard players add @s ui.skill 8
scoreboard players operation @s ui.skill /= #8 data
scoreboard players operation @s ui.talent_1 = @s talent_1
scoreboard players add @s ui.talent_1 8
scoreboard players operation @s ui.talent_1 /= #8 data
scoreboard players operation @s ui.talent_2 = @s talent_2
scoreboard players add @s ui.talent_2 8
scoreboard players operation @s ui.talent_2 /= #8 data