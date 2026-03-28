title @s[scores={setting.ability_status=2}] actionbar [{translate:"ms.relic.active",fallback:"宝物施放",color:"#33FFAA"}," » ",{translate:"ms.relic.4",fallback:"相位替换"}]
playsound entity.enderman.teleport player @s 0 1000000 0 120000
particle glow_squid_ink ~ ~1 ~ 0.2 0.3 0.2 0.2 128 force @a
scoreboard players set @s relic 0
scoreboard players add @s temp.relic 1

# 寻找幸运观众
tag @a[limit=1,sort=furthest,team=soul,scores={state=0}] add R04s
playsound entity.enderman.teleport player @a[tag=R04s] 0 1000000 0 120000
execute at @a[tag=R04s] run particle glow_squid_ink ~ ~1 ~ 0.2 0.3 0.2 0.2 128 force @a

# 互！换！位！置！
playsound entity.enderman.teleport player @a[distance=0.001..,tag=!R04s]
summon marker ~ ~ ~ {Tags:[R04,game_entity]}
tp @e[tag=R04] @s
tp @s @a[limit=1,tag=R04s]
tp @a[limit=1,tag=R04s] @e[limit=1,tag=R04]
effect give @a[tag=R04s] speed 3 4
effect give @s speed 3 4
tag @a remove R04s
kill @e[tag=R04]

# 自我安慰
execute unless entity @a[team=soul,distance=0.001..,scores={state=0}] run tellraw @s [{text:"» ",color:"#33FFAA",bold:true},{translate:"ms.info.relic.4",fallback:"额……你已经和自己交换了位置！",bold:false}]