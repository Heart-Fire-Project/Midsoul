# 获取玩家用户名
function base:get_playername {x:"0",y:"-7",z:"0"}
data modify storage ms:temp target set from storage r7s:base playername
function main:player_init_real with storage ms:temp

# 首次进入提示
tellraw @s [{text:"» ",color:"#1CCAD9",bold:true},{translate:"ms.tutorial.first_enter",fallback:"欢迎来到午夜灵魂！你可以按下 [%s] 查看教程标签页来了解基础玩法……",bold:false,with:[{keybind:"key.advancements"}]}]