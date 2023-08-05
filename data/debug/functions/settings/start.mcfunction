team join prepare @a[team=!admin]
function game:state/1/enter
tellraw @a ["\n",{"text": " » ","color": "#BC78EC","bold": true},{"selector":"@s"},{"translate":"ms.debug.force_start","fallback": " 强制开始了游戏","color": "#BC78EC"},"\n"]