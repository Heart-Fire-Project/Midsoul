title @s[scores={setting.ability_status=2}] actionbar [{translate:"ms.relic.active",fallback:"宝物施放",color:"#33FFAA"}," » ",{translate:"ms.relic.8",fallback:"投石成绊"}]
playsound entity.egg.throw player @a
scoreboard players set @s relic 0
scoreboard players add @s temp.relic 1

summon armor_stand ~ ~1.3 ~ {Tags:[game_entity,R08,R08n],attributes:[{id:"scale",base:0.07},{id:"gravity",base:0.1},{id:"name_tag_distance",base:12}],DisabledSlots:16191,CustomName:{text:"7.0",color:"#33FFAA"},CustomNameVisible:1b,Passengers:[{id:"item_display",Tags:[game_entity,R08a],item:{id:"player_head",components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTcwMWM1MDVhZGFjY2VmMGRiOTMzZTBmNDA2MTc2M2Y4MGVjMzUwN2RlZmU1ZGY2OGViMmMyMTgyODE5NmJjMyJ9fX0="}]}}},transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,0.12f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}],Invisible:1b,Invulnerable:1b,Silent:1b,Team:"soul"}
function base:view_motion {selector:"@n[tag=R08n]",amplifier:1.75}
tag @e remove R08n