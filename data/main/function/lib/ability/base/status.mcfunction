# 无需显示的场合
execute as @a[tag=status_display,scores={tick.disable=0,tick.silent=0}] run title @s actionbar ""

# 快捷栏提示 - 仅无法攻击
execute if score $color temp matches 0 run title @s[scores={tick.disable=1..,tick.silent=0}] actionbar [{text:"🚫 ",color:"#FF8F8F"},{translate:"ms.info.disabled",fallback:"你当前无法进行攻击"}," 🚫"]
execute if score $color temp matches 1 run title @s[scores={tick.disable=1..,tick.silent=0}] actionbar [{text:"🚫 ",color:"#FF8C8C"},{translate:"ms.info.disabled",fallback:"你当前无法进行攻击"}," 🚫"]
execute if score $color temp matches 2 run title @s[scores={tick.disable=1..,tick.silent=0}] actionbar [{text:"🚫 ",color:"#FF8989"},{translate:"ms.info.disabled",fallback:"你当前无法进行攻击"}," 🚫"]
execute if score $color temp matches 3 run title @s[scores={tick.disable=1..,tick.silent=0}] actionbar [{text:"🚫 ",color:"#FF8787"},{translate:"ms.info.disabled",fallback:"你当前无法进行攻击"}," 🚫"]
execute if score $color temp matches 4 run title @s[scores={tick.disable=1..,tick.silent=0}] actionbar [{text:"🚫 ",color:"#FF8484"},{translate:"ms.info.disabled",fallback:"你当前无法进行攻击"}," 🚫"]
execute if score $color temp matches 5 run title @s[scores={tick.disable=1..,tick.silent=0}] actionbar [{text:"🚫 ",color:"#FF8181"},{translate:"ms.info.disabled",fallback:"你当前无法进行攻击"}," 🚫"]
execute if score $color temp matches 6 run title @s[scores={tick.disable=1..,tick.silent=0}] actionbar [{text:"🚫 ",color:"#FF7F7F"},{translate:"ms.info.disabled",fallback:"你当前无法进行攻击"}," 🚫"]
execute if score $color temp matches 7 run title @s[scores={tick.disable=1..,tick.silent=0}] actionbar [{text:"🚫 ",color:"#FF7C7C"},{translate:"ms.info.disabled",fallback:"你当前无法进行攻击"}," 🚫"]
execute if score $color temp matches 8 run title @s[scores={tick.disable=1..,tick.silent=0}] actionbar [{text:"🚫 ",color:"#FF7979"},{translate:"ms.info.disabled",fallback:"你当前无法进行攻击"}," 🚫"]
execute if score $color temp matches 9 run title @s[scores={tick.disable=1..,tick.silent=0}] actionbar [{text:"🚫 ",color:"#FF7676"},{translate:"ms.info.disabled",fallback:"你当前无法进行攻击"}," 🚫"]

# 快捷栏提示 - 仅技能沉默
execute if score $color temp matches 0 run title @s[scores={tick.disable=0,tick.silent=1..}] actionbar [{text:"🚫 ",color:"#99D2FF"},{translate:"ms.info.silent",fallback:"你当前无法使用技能"}," 🚫"]
execute if score $color temp matches 1 run title @s[scores={tick.disable=0,tick.silent=1..}] actionbar [{text:"🚫 ",color:"#97D1FF"},{translate:"ms.info.silent",fallback:"你当前无法使用技能"}," 🚫"]
execute if score $color temp matches 2 run title @s[scores={tick.disable=0,tick.silent=1..}] actionbar [{text:"🚫 ",color:"#95CFFF"},{translate:"ms.info.silent",fallback:"你当前无法使用技能"}," 🚫"]
execute if score $color temp matches 3 run title @s[scores={tick.disable=0,tick.silent=1..}] actionbar [{text:"🚫 ",color:"#92CDFF"},{translate:"ms.info.silent",fallback:"你当前无法使用技能"}," 🚫"]
execute if score $color temp matches 4 run title @s[scores={tick.disable=0,tick.silent=1..}] actionbar [{text:"🚫 ",color:"#90CBFF"},{translate:"ms.info.silent",fallback:"你当前无法使用技能"}," 🚫"]
execute if score $color temp matches 5 run title @s[scores={tick.disable=0,tick.silent=1..}] actionbar [{text:"🚫 ",color:"#8ECAFF"},{translate:"ms.info.silent",fallback:"你当前无法使用技能"}," 🚫"]
execute if score $color temp matches 6 run title @s[scores={tick.disable=0,tick.silent=1..}] actionbar [{text:"🚫 ",color:"#8CC8FF"},{translate:"ms.info.silent",fallback:"你当前无法使用技能"}," 🚫"]
execute if score $color temp matches 7 run title @s[scores={tick.disable=0,tick.silent=1..}] actionbar [{text:"🚫 ",color:"#8AC6FF"},{translate:"ms.info.silent",fallback:"你当前无法使用技能"}," 🚫"]
execute if score $color temp matches 8 run title @s[scores={tick.disable=0,tick.silent=1..}] actionbar [{text:"🚫 ",color:"#88C4FF"},{translate:"ms.info.silent",fallback:"你当前无法使用技能"}," 🚫"]
execute if score $color temp matches 9 run title @s[scores={tick.disable=0,tick.silent=1..}] actionbar [{text:"🚫 ",color:"#86C2FF"},{translate:"ms.info.silent",fallback:"你当前无法使用技能"}," 🚫"]

# 快捷栏提示 - 全中
execute if score $color temp matches 0 run title @s[scores={tick.disable=1..,tick.silent=1..}] actionbar [{text:"🚫 ",color:"#CEAEFF"},{translate:"ms.info.disable&silent",fallback:"你当前无法进行攻击或使用技能"}," 🚫"]
execute if score $color temp matches 1 run title @s[scores={tick.disable=1..,tick.silent=1..}] actionbar [{text:"🚫 ",color:"#CCABFF"},{translate:"ms.info.disable&silent",fallback:"你当前无法进行攻击或使用技能"}," 🚫"]
execute if score $color temp matches 2 run title @s[scores={tick.disable=1..,tick.silent=1..}] actionbar [{text:"🚫 ",color:"#CAA8FF"},{translate:"ms.info.disable&silent",fallback:"你当前无法进行攻击或使用技能"}," 🚫"]
execute if score $color temp matches 3 run title @s[scores={tick.disable=1..,tick.silent=1..}] actionbar [{text:"🚫 ",color:"#C9A5FF"},{translate:"ms.info.disable&silent",fallback:"你当前无法进行攻击或使用技能"}," 🚫"]
execute if score $color temp matches 4 run title @s[scores={tick.disable=1..,tick.silent=1..}] actionbar [{text:"🚫 ",color:"#C7A2FF"},{translate:"ms.info.disable&silent",fallback:"你当前无法进行攻击或使用技能"}," 🚫"]
execute if score $color temp matches 5 run title @s[scores={tick.disable=1..,tick.silent=1..}] actionbar [{text:"🚫 ",color:"#C59FFF"},{translate:"ms.info.disable&silent",fallback:"你当前无法进行攻击或使用技能"}," 🚫"]
execute if score $color temp matches 6 run title @s[scores={tick.disable=1..,tick.silent=1..}] actionbar [{text:"🚫 ",color:"#C49CFF"},{translate:"ms.info.disable&silent",fallback:"你当前无法进行攻击或使用技能"}," 🚫"]
execute if score $color temp matches 7 run title @s[scores={tick.disable=1..,tick.silent=1..}] actionbar [{text:"🚫 ",color:"#C299FF"},{translate:"ms.info.disable&silent",fallback:"你当前无法进行攻击或使用技能"}," 🚫"]
execute if score $color temp matches 8 run title @s[scores={tick.disable=1..,tick.silent=1..}] actionbar [{text:"🚫 ",color:"#C096FF"},{translate:"ms.info.disable&silent",fallback:"你当前无法进行攻击或使用技能"}," 🚫"]
execute if score $color temp matches 9 run title @s[scores={tick.disable=1..,tick.silent=1..}] actionbar [{text:"🚫 ",color:"#BE93FF"},{translate:"ms.info.disable&silent",fallback:"你当前无法进行攻击或使用技能"}," 🚫"]

# 记录显示信息
tag @s[scores={tick.disable=1..}] add status_display
tag @s[scores={tick.silent=1..}] add status_display
tag @s[scores={tick.disable=0,tick.silent=0}] remove status_display