scoreboard players remove $mode_select data 1
execute if score $mode_select data matches 0 run scoreboard players set $mode_select data 2
execute if score $mode_select data matches 1 run tellraw @a ["\n",{"text": " » ","color": "#BC78EC","bold": true},{"translate":"ms.setting.mode_change","fallback":"%s 切换模式至 %s","color": "#BC78EC","with":[{"selector":"@s"},{"translate":"ms.mode.1","fallback": "普通模式","color": "light_purple"}]},"\n"]
execute if score $mode_select data matches 2 run tellraw @a ["\n",{"text": " » ","color": "#BC78EC","bold": true},{"translate":"ms.setting.mode_change","fallback":"%s 切换模式至 %s","color": "#BC78EC","with":[{"selector":"@s"},{"translate":"ms.mode.2","fallback": "排位模式","color": "yellow"}]},"\n"]
function game:state/0/admin_settings