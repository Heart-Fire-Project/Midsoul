tellraw @s "\n"

execute if score $echo data matches 1 run tellraw @s [{"text":"","color":"light_purple"},{"translate":"ms.echo","fallback":"回响"}," ❖ ",{"translate":"ms.echo.1","fallback":"强制性引导"}]
execute if score $echo data matches 2 run tellraw @s [{"text":"","color":"light_purple"},{"translate":"ms.echo","fallback":"回响"}," ❖ ",{"translate":"ms.echo.2","fallback":"灵魂鉴碎片"}]
execute if score $echo data matches 3 run tellraw @s [{"text":"","color":"light_purple"},{"translate":"ms.echo","fallback":"回响"}," ❖ ",{"translate":"ms.echo.3","fallback":"九次九碎片"}]
execute if score $echo data matches 4 run tellraw @s [{"text":"","color":"light_purple"},{"translate":"ms.echo","fallback":"回响"}," ❖ ",{"translate":"ms.echo.4","fallback":"技能全靠盒"}]
execute if score $echo data matches 5 run tellraw @s [{"text":"","color":"light_purple"},{"translate":"ms.echo","fallback":"回响"}," ❖ ",{"translate":"ms.echo.5","fallback":"个雷劈落来"}]
execute if score $echo data matches 6 run tellraw @s [{"text":"","color":"light_purple"},{"translate":"ms.echo","fallback":"回响"}," ❖ ",{"translate":"ms.echo.6","fallback":"谁家小灵魂"}]
execute if score $echo data matches 7 run tellraw @s [{"text":"","color":"light_purple"},{"translate":"ms.echo","fallback":"回响"}," ❖ ",{"translate":"ms.echo.7","fallback":"冲刺冲刺冲"}]
execute if score $echo data matches 8 run tellraw @s [{"text":"","color":"light_purple"},{"translate":"ms.echo","fallback":"回响"}," ❖ ",{"translate":"ms.echo.8","fallback":"命运交响曲"}]
execute if score $echo data matches 9 run tellraw @s [{"text":"","color":"light_purple"},{"translate":"ms.echo","fallback":"回响"}," ❖ ",{"translate":"ms.echo.9","fallback":"破门直接逃"}]

execute if score $echo data matches 1 run tellraw @s [{"translate":"ms.echo.1.desc.a","fallback":"每过 45~80 秒清除已有标记并随机标记 2~3 个灵魂；被标记的灵魂将持续发光，未被标记的灵魂不会受到伤害"},"\n",{"translate":"ms.echo.1.desc.b","fallback":"剩余灵魂 <3 人时移除所有标记，且不再生效","color":"gray"}]
execute if score $echo data matches 2 run tellraw @s [{"translate":"ms.echo.2.desc.a","fallback":"碎片收集需求降低 30%%，但有 30%% 的碎片为假碎片；假碎片可收集，效果为原地生成一个烟花"},"\n",{"translate":"ms.echo.2.desc.b","fallback":"与碎片有关的效果不会选中假碎片","color":"gray"}]
execute if score $echo data matches 3 run tellraw @s [{"translate":"ms.echo.3.desc","fallback":"碎片收集需求固定为 9；初始仅会生成 3 个碎片，收集碎片时生成 1 个碎片"}]
execute if score $echo data matches 4 run tellraw @s [{"translate":"ms.echo.4.desc","fallback":"技能不再自然冷却；灵魂宝物盒刷新速度 +200%%，且产出无垠时界的概率提升至 50%%；守卫者开启灵魂宝物盒时额外 -20s 冷却"}]
execute if score $echo data matches 5 run tellraw @s [{"translate":"ms.echo.5.desc","fallback":"每过 20~60 秒降下多处落雷；被落雷击中的灵魂受到 5 点伤害，但在 7 秒内无敌并移速 +100%%"}]
execute if score $echo data matches 6 run tellraw @s [{"translate":"ms.echo.6.desc","fallback":"所有灵魂的移速 +10%%，交互速度 -20%%，自身大小 -30%%"}]
execute if score $echo data matches 7 run tellraw @s [{"translate":"ms.echo.7.desc","fallback":"所有玩家的移速 +50%%，进入下一阶段时额外 +25%%"}]
execute if score $echo data matches 8 run tellraw @s [{"translate":"ms.echo.8.desc","fallback":"每过 30~120 秒，随机交换所有玩家位置"}]
execute if score $echo data matches 9 run tellraw @s [{"translate":"ms.echo.9.desc","fallback":"碎片收集达标后跳过充能阶段，直接开启传送门"}]

# 重设倒计时
scoreboard players set $echo_info tick.global 75