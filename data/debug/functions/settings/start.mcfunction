team join prepare @a[team=!admin]
function game:state/1/enter
tellraw @a ["\n",{"text": " » ","color": "#BC78EC","bold": true},{"translate":"ms.debug.force_start","fallback": "%s 强制开始了游戏","color": "#BC78EC","with":[{"selector":"@s"}]},"\n"]