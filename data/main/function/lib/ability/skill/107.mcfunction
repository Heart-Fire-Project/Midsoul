title @s[scores={setting.ability_status=2}] actionbar [{translate:"ms.skill.active",fallback:"技能施放",color:"red"}," » ",{translate:"ms.skill.107",fallback:"洞若观火"}]
playsound entity.creaking.activate player @a ~ ~ ~ 1 1.2
particle white_smoke ~ ~0.2 ~ 0.2 0.3 0.2 0.1 20 force @a
scoreboard players add @s temp.skill 1
tag @s add skill_on

# 清空计数
scoreboard players set @s skill.107 0

# 给予效果
effect give @s speed 15 0

# 生成瞑视之眼 | 为避免技能期间玩家掉线造成清除失败，其将有独立存活计时器
summon skeleton ~ ~1 ~ {Tags:[S107,S107n,game_entity],equipment:{head:{id:"player_head",count:1,components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWE3NDQxZjBjMmNmYTYyZmVkOWUxMzk0ZjBkM2VkMjJlOTNkNGEzYjE1ZjNmNWQ0MGYzMzAwMGVmNDk1YzUzZSJ9fX0="}]}}}},Silent:1b,NoAI:1b,Invulnerable:1b,Team:"guardian"}
scoreboard players operation @n[tag=S107n] entity_id = @s entity_id
scoreboard players set @n[tag=S107n] tick.general -300
effect give @e[tag=S107n] invisibility infinite 0 true
tp @e[tag=S107n] @s
tag @e remove S107n

# 重置冷却
scoreboard players set @s tick.skill -30000