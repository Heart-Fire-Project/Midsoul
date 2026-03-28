# 守卫者武器
execute if entity @s[team=guardian] run item replace block 0 -7 0 container.1 with stick
$execute if entity @s[team=guardian,scores={state=0}] run item modify block 0 -7 0 container.1 main:weapon/$(weapon)a
$execute if entity @s[team=guardian,scores={state=0,tick.enhance=1..}] run item modify block 0 -7 0 container.1 main:weapon/$(weapon)b
$execute if entity @s[team=guardian,scores={state=1}] run item modify block 0 -7 0 container.1 main:weapon/$(weapon)c
$execute if entity @s[team=guardian,scores={tick.disable=1..}] run item modify block 0 -7 0 container.1 main:weapon/$(weapon)c
execute if entity @s[team=guardian,scores={state=1}] run item modify block 0 -7 0 container.1 {function:"set_components",components:{item_model:"barrier"}}
execute if score @s tick.disable matches 1.. run item modify block 0 -7 0 container.1 {function:"set_count",count:1}
$execute if score @s tick.disable matches 1.. run item modify block 0 -7 0 container.1 {function:"set_components",components:{damage:$(disable),max_damage:$(disable_max)}}

# 灵魂宝物
execute if entity @s[team=soul] run item replace block 0 -7 0 container.1 with firework_star
execute if entity @s[team=soul,scores={relic=6,state=0}] run item replace block 0 -7 0 container.1 with crossbow
$execute if entity @s[team=soul] run item modify block 0 -7 0 container.1 main:relic/$(relic)
execute if entity @s[team=soul,scores={state=1}] run item modify block 0 -7 0 container.1 {function:"set_components",components:{item_model:"barrier"}}

# 技能物品
item replace block 0 -7 0 container.4 with firework_star
$execute if entity @s[team=soul] run item modify block 0 -7 0 container.4 main:skill/0$(skill)
$execute if entity @s[team=guardian] run item modify block 0 -7 0 container.4 main:skill/1$(skill)
item modify block 0 -7 0 container.4 {function:"set_components",components:{max_stack_size:99}}
$execute if entity @s[team=soul,scores={skill=2}] run item modify block 0 -7 0 container.4 {function:"set_count",count:$(S002)}
$execute if entity @s[team=soul,scores={skill=4}] run item modify block 0 -7 0 container.4 {function:"set_count",count:$(S004)}
execute if entity @s[team=soul,scores={skill=2,tick.skill=..0,skill.002=1..}] if entity @e[tag=gold] run item modify block 0 -7 0 container.4 {function:"set_components",components:{item_model:"soul_lantern"}}
execute if entity @s[team=guardian,scores={skill=4,tick.skill=..0}] run item modify block 0 -7 0 container.4 {"function":"set_components","components":{"item_model":"ominous_bottle","consumable":{"animation":"drink","consume_seconds":1.6,"sound":"entity.generic.drink","has_consume_particles":false,"on_consume_effects":[{"type":"play_sound","sound":"item.ominous_bottle.dispose"}]}}}
execute if entity @s[scores={state=0,tick.skill=1..}] run item modify block 0 -7 0 container.4 {function:"set_components",components:{item_model:"firework_star"}}
execute if entity @s[scores={state=1}] run item modify block 0 -7 0 container.4 {function:"set_components",components:{item_model:"barrier"}}
execute if score @s tick.silent matches 1.. run item modify block 0 -7 0 container.4 {function:"set_count",count:1}
$execute if score @s tick.silent matches 1.. run item modify block 0 -7 0 container.4 {function:"set_components",components:{damage:$(silent),max_damage:$(silent_max),max_stack_size:1,tooltip_display:{hidden_components:[damage]}}}

# 一天赋物品
item replace block 0 -7 0 container.7 with firework_star
$execute if entity @s[team=soul] run item modify block 0 -7 0 container.7 main:talent/0$(talent_1)
$execute if entity @s[team=guardian] run item modify block 0 -7 0 container.7 main:talent/1$(talent_1)
item modify block 0 -7 0 container.7 {function:"set_components",components:{max_stack_size:99}}
execute if entity @s[team=soul,scores={talent_1=2,tick.talent_1=1..}] run item modify block 0 -7 0 container.7 {function:"set_components",components:{item_model:"firework_star"}}
execute if entity @s[team=soul,scores={talent_1=4},tag=!T004] run item modify block 0 -7 0 container.7 {function:"set_components",components:{item_model:"firework_star"}}
execute if entity @s[team=guardian,scores={talent_1=7,talent.107=0}] run item modify block 0 -7 0 container.7 {function:"set_components",components:{item_model:"firework_star"}}
$execute if entity @s[team=soul,scores={talent_1=1}] run item modify block 0 -7 0 container.7 {function:"set_count",count:$(tick_talent_1)}
$execute if entity @s[team=soul,scores={talent_1=2}] run item modify block 0 -7 0 container.7 {function:"set_count",count:$(tick_talent_1)}
$execute if entity @s[team=soul,scores={talent_1=4}] run item modify block 0 -7 0 container.7 {function:"set_count",count:$(T004)}
$execute if entity @s[team=soul,scores={talent_1=7}] run item modify block 0 -7 0 container.7 {function:"set_count",count:$(T007)}
$execute if entity @s[team=guardian,scores={talent_1=4}] run item modify block 0 -7 0 container.7 {function:"set_count",count:$(tick_talent_1)}
$execute if entity @s[team=guardian,scores={talent_1=6}] run item modify block 0 -7 0 container.7 {function:"set_count",count:$(tick_talent_1)}
$execute if entity @s[team=guardian,scores={talent_1=7}] run item modify block 0 -7 0 container.7 {function:"set_count",count:$(T107)}
$execute if entity @s[team=guardian,scores={talent_1=7,talent.107=0}] run item modify block 0 -7 0 container.7 {function:"set_count",count:$(tick_talent_1)}

# 二天赋物品
item replace block 0 -7 0 container.8 with firework_star
$execute if entity @s[team=soul] run item modify block 0 -7 0 container.8 main:talent/0$(talent_2)
$execute if entity @s[team=guardian] run item modify block 0 -7 0 container.8 main:talent/1$(talent_2)
item modify block 0 -7 0 container.8 {function:"set_components",components:{max_stack_size:99}}
execute if entity @s[team=soul,scores={talent_2=2,tick.talent_2=1..}] run item modify block 0 -7 0 container.8 {function:"set_components",components:{item_model:"firework_star"}}
execute if entity @s[team=soul,scores={talent_2=4},tag=!T004] run item modify block 0 -7 0 container.8 {function:"set_components",components:{item_model:"firework_star"}}
execute if entity @s[team=guardian,scores={talent_2=7,talent.107=0}] run item modify block 0 -7 0 container.8 {function:"set_components",components:{item_model:"firework_star"}}
$execute if entity @s[team=soul,scores={talent_2=1}] run item modify block 0 -7 0 container.8 {function:"set_count",count:$(tick_talent_2)}
$execute if entity @s[team=soul,scores={talent_2=2}] run item modify block 0 -7 0 container.8 {function:"set_count",count:$(tick_talent_2)}
$execute if entity @s[team=soul,scores={talent_2=4}] run item modify block 0 -7 0 container.8 {function:"set_count",count:$(T004)}
$execute if entity @s[team=soul,scores={talent_2=7}] run item modify block 0 -7 0 container.8 {function:"set_count",count:$(T007)}
$execute if entity @s[team=guardian,scores={talent_2=4}] run item modify block 0 -7 0 container.8 {function:"set_count",count:$(tick_talent_2)}
$execute if entity @s[team=guardian,scores={talent_2=6}] run item modify block 0 -7 0 container.8 {function:"set_count",count:$(tick_talent_2)}
$execute if entity @s[team=guardian,scores={talent_2=7}] run item modify block 0 -7 0 container.8 {function:"set_count",count:$(T107)}
$execute if entity @s[team=guardian,scores={talent_2=7,talent.107=0}] run item modify block 0 -7 0 container.8 {function:"set_count",count:$(tick_talent_2)}

# 基础光效处理
execute if entity @s[tag=skill_on] run item modify block 0 -7 0 container.4 {function:"set_components",components:{enchantment_glint_override:true}}
execute if entity @s[tag=talent_1_on] run item modify block 0 -7 0 container.7 {function:"set_components",components:{enchantment_glint_override:true}}
execute if entity @s[tag=talent_2_on] run item modify block 0 -7 0 container.8 {function:"set_components",components:{enchantment_glint_override:true}}
execute if entity @s[team=soul,tag=relic_on] run item modify block 0 -7 0 container.1 {function:"set_components",components:{enchantment_glint_override:true}}

# 特殊光效处理
execute if entity @s[team=guardian,scores={skill=5,tick.enhance=1..},tag=skill_on] run item modify block 0 -7 0 container.1 {function:"set_components",components:{enchantment_glint_override:true}}
execute if entity @s[team=soul,scores={talent_1=4},tag=T004s] run item modify block 0 -7 0 container.7 {function:"set_components",components:{enchantment_glint_override:true}}
execute if entity @s[team=soul,scores={talent_2=4},tag=T004s] run item modify block 0 -7 0 container.8 {function:"set_components",components:{enchantment_glint_override:true}}