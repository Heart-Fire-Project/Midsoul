scoreboard players add @s[scores={tick.relic=..-1}] tick.relic 100

execute as @s[scores={relic=1,tick.relic=0..}] run function main:lib/ability/relic/01f
tag @s[scores={relic=7,tick.relic=0..}] remove relic_on