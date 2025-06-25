title @s[scores={setting.ability_actionbar=1..}] actionbar [{"translate":"ms.talent.active","fallback":"天赋触发","color":"aqua"}," » ",{"translate":"ms.talent.006","fallback":"碎片注入"}]
playsound block.lantern.place player @s
particle wax_on ~ ~0.3 ~ 0.25 0.3 0.25 3 7 force @a
scoreboard players add @s temp.talent 1

# 应用效果
scoreboard players add @a[team=soul,scores={state=1}] tick.global 1000
execute at @a[team=soul,scores={state=1}] run particle dust_color_transition{from_color:808529,to_color:1152624,scale:1} ~ ~0.3 ~ 0.3 0.3 0.3 0.1 16 force @a