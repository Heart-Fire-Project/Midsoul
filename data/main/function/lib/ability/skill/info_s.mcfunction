tellraw @s ""

tellraw @s[scores={skill=1}] [{translate:"ms.skill",fallback:"[技能] ",color:"#5599FF"},{translate:"ms.skill.001",fallback:"幻影迷踪"}]
tellraw @s[scores={skill=2}] [{translate:"ms.skill",fallback:"[技能] ",color:"#5599FF"},{translate:"ms.skill.002",fallback:"灵灯熔铸"}]
tellraw @s[scores={skill=3}] [{translate:"ms.skill",fallback:"[技能] ",color:"#5599FF"},{translate:"ms.skill.003",fallback:"逆向追踪"}]
tellraw @s[scores={skill=4}] [{translate:"ms.skill",fallback:"[技能] ",color:"#5599FF"},{translate:"ms.skill.004",fallback:"铤而走险"}]
tellraw @s[scores={skill=5}] [{translate:"ms.skill",fallback:"[技能] ",color:"#5599FF"},{translate:"ms.skill.005",fallback:"锚定虚影"}]

tellraw @s[scores={skill=1}] [{text:"⚡ 60  ⌚ 10 > ",color:"#5599FF"},{translate:"ms.tag.survive",fallback:"生存"}]
tellraw @s[scores={skill=2}] [{text:"⚡ 75  ⌚ 15 > ",color:"#5599FF"},{translate:"ms.tag.heal",fallback:"救助"}]
tellraw @s[scores={skill=3}] [{text:"⚡ 70 > ",color:"#5599FF"},{translate:"ms.tag.detect",fallback:"感知"},"/",{translate:"ms.tag.debuff",fallback:"妨害"}]
tellraw @s[scores={skill=4}] [{text:"⚡ 60  ⌚ 12 > ",color:"#5599FF"},{translate:"ms.tag.strategy",fallback:"策略"}]
tellraw @s[scores={skill=5}] [{text:"⚡ 90 > ",color:"#5599FF"},{translate:"ms.tag.survive",fallback:"生存"},"/",{translate:"ms.tag.strategy",fallback:"策略"}]

tellraw @s[scores={skill=1}] [{translate:"ms.skill.001.desc",fallback:"隐身且移速 +100%%；若距离守卫者 12 格以内则改为移速 +140%%"}]
tellraw @s[scores={skill=2}] [{translate:"ms.skill.002.desc",fallback:"持续发光且移速 -75%%；技能结束时点亮最近的灵魂之灯，若无则使最近的守卫者发光 5 秒，离其最近的灵魂在 5 秒内移速 +80%%"},"\n",{translate:"ms.skill.002.desc.sub",fallback:"触发点亮灵魂之灯效果后，当次技能冷却时间 +12 秒",color:"gray"}]
tellraw @s[scores={skill=3}] [{translate:"ms.skill.003.desc",fallback:"使所有守卫者获得发光，若距离 25 格以内附加移速 -30%%；自身获得等同于其中最长发光时长的移速 +40%% 效果"},"\n",{translate:"ms.skill.003.desc.sub",fallback:"守卫者距离你越近其所获得效果的时长越长，距离 12 格以内时达到上限发光 20 秒与减速 10 秒",color:"gray"}]
tellraw @s[scores={skill=4}] [{translate:"ms.skill.004.desc",fallback:"若距离守卫者不足 20 格，则自身移速 +100%% 且使 20 格内的守卫者无法攻击，或自身移速 -60%%；若距离守卫者大于 20 格，则使最近的守卫者发光且移速 -30%%，或自身传送至最近的守卫者附近并移速 -90%%"},"\n",{translate:"ms.skill.004.desc.sub",fallback:"触发上述负面效果的概率初始为 5%%，但每次使用该技能都会 +7%%，至多提升至 40%%",color:"gray"}]
tellraw @s[scores={skill=5}] [{translate:"ms.skill.005.desc",fallback:"施放时原地生成一个虚影锚点，第二次及之后施放时传送至上一个虚影锚点"},"\n",{translate:"ms.skill.005.desc.sub",fallback:"初始冷却减半；生成的锚点仅己方可见",color:"gray"}]