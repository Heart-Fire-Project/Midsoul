tellraw @s ""

execute if score $echo data matches 1 run tellraw @s [{text:"",color:"light_purple"},{translate:"ms.echo",fallback:"回响"}," ❖ ",{translate:"ms.echo.1",fallback:"强制性引导"}]
execute if score $echo data matches 2 run tellraw @s [{text:"",color:"light_purple"},{translate:"ms.echo",fallback:"回响"}," ❖ ",{translate:"ms.echo.2",fallback:"灵魂鉴碎片"}]
execute if score $echo data matches 3 run tellraw @s [{text:"",color:"light_purple"},{translate:"ms.echo",fallback:"回响"}," ❖ ",{translate:"ms.echo.3",fallback:"开盒得技能"}]
execute if score $echo data matches 4 run tellraw @s [{text:"",color:"light_purple"},{translate:"ms.echo",fallback:"回响"}," ❖ ",{translate:"ms.echo.4",fallback:"天幕降落雷"}]
execute if score $echo data matches 5 run tellraw @s [{text:"",color:"light_purple"},{translate:"ms.echo",fallback:"回响"}," ❖ ",{translate:"ms.echo.5",fallback:"谁家小灵魂"}]
execute if score $echo data matches 6 run tellraw @s [{text:"",color:"light_purple"},{translate:"ms.echo",fallback:"回响"}," ❖ ",{translate:"ms.echo.6",fallback:"冲刺冲刺冲"}]
execute if score $echo data matches 7 run tellraw @s [{text:"",color:"light_purple"},{translate:"ms.echo",fallback:"回响"}," ❖ ",{translate:"ms.echo.7",fallback:"命运交响曲"}]
execute if score $echo data matches 8 run tellraw @s [{text:"",color:"light_purple"},{translate:"ms.echo",fallback:"回响"}," ❖ ",{translate:"ms.echo.8",fallback:"先抑再后扬"}]
execute if score $echo data matches 9 run tellraw @s [{text:"",color:"light_purple"},{translate:"ms.echo",fallback:"回响"}," ❖ ",{translate:"ms.echo.9",fallback:"九次九重片"}]
execute if score $echo data matches 10 run tellraw @s [{text:"",color:"light_purple"},{translate:"ms.echo",fallback:"回响"}," ❖ ",{translate:"ms.echo.10",fallback:"一瞥惊鸿影"}]

execute if score $echo data matches 1 run tellraw @s [{translate:"ms.echo.1.desc",fallback:"每过 45~80 秒，清除已有标记并随机标记 2~4 个灵魂；被标记的灵魂将持续发光，否则不会受到伤害但传送门充能速度降低至 20%%，灵魂垂死流速 +25%%"},"\n",{translate:"ms.echo.1.desc.sub",fallback:"对局开始时立刻触发一次，剩余灵魂 <3 人时回响失效",color:"gray"}]
execute if score $echo data matches 2 run tellraw @s [{translate:"ms.echo.2.desc",fallback:"碎片收集需求降低 30%%，但有 30%% 的碎片为收集后只会生成一个烟花的假碎片"},"\n",{translate:"ms.echo.2.desc.sub",fallback:"与碎片有关的效果不会选中假碎片",color:"gray"}]
execute if score $echo data matches 3 run tellraw @s [{translate:"ms.echo.3.desc",fallback:"技能冷却速度 -50%%，但灵魂宝物盒刷新间隔降低至 60s；灵魂打开宝盒时产出无垠时界的概率提升至 60%%，守卫者打开宝盒时 -35s 技能冷却"}]
execute if score $echo data matches 4 run tellraw @s [{translate:"ms.echo.4.desc",fallback:"游戏天气变为雷雨，每过 20~60 秒降下多处落雷；落雷会造成伤害，击中守卫者时使其强制擦刀"}]
execute if score $echo data matches 5 run tellraw @s [{translate:"ms.echo.5.desc",fallback:"所有灵魂的尺寸降低至 70%%，但交互速度 -10%%"}]
execute if score $echo data matches 6 run tellraw @s [{translate:"ms.echo.6.desc",fallback:"所有玩家的移速提升 50%%，每进入下一阶段时该倍率提升 25%%"}]
execute if score $echo data matches 7 run tellraw @s [{translate:"ms.echo.7.desc",fallback:"每过 30~120 秒，所有玩家将在同阵营内随机交换位置"}]
execute if score $echo data matches 8 run tellraw @s [{translate:"ms.echo.8.desc",fallback:"碎片收集速度 -50%%；进入充能阶段时所有传送门将立即充能至 50%%"}]
execute if score $echo data matches 9 run tellraw @s [{translate:"ms.echo.9.desc",fallback:"碎片收集需求固定为 9；初始仅会生成极少碎片，收集碎片时生成 1 个碎片"}]
execute if score $echo data matches 10 run tellraw @s [{translate:"ms.echo.10.desc",fallback:"守卫者进行周期性判定：若距离灵魂 8 格以外则隐身且无法攻击并生成残影；若距离灵魂 8 格以内则发光"},"\n",{translate:"ms.echo.10.desc.sub",fallback:"残影将在下一次判定时自毁，生成时若其周围 12 格内有灵魂则会发光",color:"gray"}]

# 重设倒计时
scoreboard players set $echo_info tick.general 75